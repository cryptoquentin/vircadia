//
//  PacketHeaders.cpp
//  libraries/networking/src
//
//  Created by Stephen Birarda on 6/28/13.
//  Copyright 2013 High Fidelity, Inc.
//
//  Distributed under the Apache License, Version 2.0.
//  See the accompanying file LICENSE or http://www.apache.org/licenses/LICENSE-2.0.html
//

#include "PacketHeaders.h"

#include <math.h>

#include <QtCore/QDebug>

int arithmeticCodingValueFromBuffer(const char* checkValue) {
    if (((uchar) *checkValue) < 255) {
        return *checkValue;
    } else {
        return 255 + arithmeticCodingValueFromBuffer(checkValue + 1);
    }
}

int numBytesArithmeticCodingFromBuffer(const char* checkValue) {
    if (((uchar) *checkValue) < 255) {
        return 1;
    } else {
        return 1 + numBytesArithmeticCodingFromBuffer(checkValue + 1);
    }
}

int packArithmeticallyCodedValue(int value, char* destination) {
    if (value < 255) {
        // less than 255, just pack our value
        destination[0] = (uchar) value;
        return 1;
    } else {
        // pack 255 and then recursively pack on
        ((unsigned char*)destination)[0] = 255;
        return 1 + packArithmeticallyCodedValue(value - 255, destination + 1);
    }
}

PacketVersion versionForPacketType(PacketType packetType) {
    switch (packetType) {
        case PacketTypeMicrophoneAudioNoEcho:
        case PacketTypeMicrophoneAudioWithEcho:
            return 2;
        case PacketTypeSilentAudioFrame:
            return 4;
        case PacketTypeMixedAudio:
            return 1;
        case PacketTypeInjectAudio:
            return 1;
        case PacketTypeAvatarData:
            return 5;
        case PacketTypeAvatarIdentity:
            return 1;
        case PacketTypeEnvironmentData:
            return 2;
        case PacketTypeDomainList:
        case PacketTypeDomainListRequest:
            return 5;
        case PacketTypeCreateAssignment:
        case PacketTypeRequestAssignment:
            return 2;
        case PacketTypeOctreeStats:
            return 1;
        case PacketTypeStopNode:
            return 1;
        case PacketTypeEntityAddOrEdit:
        case PacketTypeEntityData:
            return VERSION_ENTITIES_ZONE_ENTITIES_HAVE_ATMOSPHERE;
        case PacketTypeEntityErase:
            return 2;
        case PacketTypeAudioStreamStats:
            return 1;
        default:
            return 0;
    }
}

#define PACKET_TYPE_NAME_LOOKUP(x) case x:  return QString(#x);

QString nameForPacketType(PacketType packetType) {
    switch (packetType) {
        PACKET_TYPE_NAME_LOOKUP(PacketTypeUnknown);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeStunResponse);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeDomainList);
        PACKET_TYPE_NAME_LOOKUP(PacketTypePing);
        PACKET_TYPE_NAME_LOOKUP(PacketTypePingReply);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeKillAvatar);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeAvatarData);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeInjectAudio);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeMixedAudio);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeMicrophoneAudioNoEcho);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeMicrophoneAudioWithEcho);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeBulkAvatarData);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeSilentAudioFrame);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeEnvironmentData);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeDomainListRequest);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeRequestAssignment);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeCreateAssignment);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeDomainConnectionDenied);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeMuteEnvironment);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeAudioStreamStats);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeDataServerConfirm);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeOctreeStats);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeJurisdiction);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeJurisdictionRequest);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeAvatarIdentity);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeAvatarBillboard);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeDomainConnectRequest);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeDomainServerRequireDTLS);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeNodeJsonStats);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeEntityQuery);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeEntityData);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeEntityAddOrEdit);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeEntityErase);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeEntityAddResponse);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeOctreeDataNack);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeStopNode);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeAudioEnvironment);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeEntityEditNack);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeSignedTransactionPayment);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeIceServerHeartbeat);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeIceServerHeartbeatResponse);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeUnverifiedPing);
        PACKET_TYPE_NAME_LOOKUP(PacketTypeUnverifiedPingReply);
        default:
            return QString("Type: ") + QString::number((int)packetType);
    }
    return QString("unexpected");
}



QByteArray byteArrayWithUUIDPopulatedHeader(PacketType packetType, const QUuid& connectionUUID) {
    QByteArray freshByteArray(MAX_PACKET_HEADER_BYTES, 0);
    freshByteArray.resize(populatePacketHeaderWithUUID(freshByteArray, packetType, connectionUUID));
    return freshByteArray;
}

int populatePacketHeaderWithUUID(QByteArray& packet, PacketType packetType, const QUuid& connectionUUID) {
    if (packet.size() < numBytesForPacketHeaderGivenPacketType(packetType)) {
        packet.resize(numBytesForPacketHeaderGivenPacketType(packetType));
    }
    
    return populatePacketHeaderWithUUID(packet.data(), packetType, connectionUUID);
}

int populatePacketHeaderWithUUID(char* packet, PacketType packetType, const QUuid& connectionUUID) {
    int numTypeBytes = packArithmeticallyCodedValue(packetType, packet);
    packet[numTypeBytes] = versionForPacketType(packetType);
    
    char* position = packet + numTypeBytes + sizeof(PacketVersion);
    
    QByteArray rfcUUID = connectionUUID.toRfc4122();
    memcpy(position, rfcUUID.constData(), NUM_BYTES_RFC4122_UUID);
    position += NUM_BYTES_RFC4122_UUID;
    
    if (!NON_VERIFIED_PACKETS.contains(packetType)) {
        // pack 16 bytes of zeros where the md5 hash will be placed once data is packed
        memset(position, 0, NUM_BYTES_MD5_HASH);
        position += NUM_BYTES_MD5_HASH;
    }

    if (SEQUENCE_NUMBERED_PACKETS.contains(packetType)) {
       // Pack zeros for the number of bytes that the sequence number requires.
       // The LimitedNodeList will handle packing in the sequence number when sending out the packet.
       memset(position, 0, sizeof(PacketSequenceNumber));
       position += sizeof(PacketSequenceNumber);
    }

    // return the number of bytes written for pointer pushing
    return position - packet;
}

int numBytesForPacketHeader(const QByteArray& packet) {
    PacketType packetType = packetTypeForPacket(packet);
    return numBytesForPacketHeaderGivenPacketType(packetType);
}

int numBytesForPacketHeader(const char* packet) {
    PacketType packetType = packetTypeForPacket(packet);
    return numBytesForPacketHeaderGivenPacketType(packetType);
}

int numBytesForPacketHeaderGivenPacketType(PacketType packetType) {
    return (int) ceilf((float) packetType / 255)
    + numHashBytesForType(packetType)
    + numSequenceNumberBytesForType(packetType)
    + NUM_STATIC_HEADER_BYTES;
}

int numHashBytesForType(PacketType packetType) {
    return (NON_VERIFIED_PACKETS.contains(packetType) ? 0 : NUM_BYTES_MD5_HASH);
}

int numSequenceNumberBytesForType(PacketType packetType) {
    return (SEQUENCE_NUMBERED_PACKETS.contains(packetType) ? sizeof(PacketSequenceNumber) : 0);
}

QUuid uuidFromPacketHeader(const QByteArray& packet) {
    return QUuid::fromRfc4122(packet.mid(numBytesArithmeticCodingFromBuffer(packet.data()) + sizeof(PacketVersion),
                                         NUM_BYTES_RFC4122_UUID));
}

int hashOffsetForPacketType(PacketType packetType) {
    return numBytesForPacketHeaderGivenPacketType(packetType) 
        - (SEQUENCE_NUMBERED_PACKETS.contains(packetType) ? sizeof(PacketSequenceNumber) : 0)
        - NUM_BYTES_RFC4122_UUID;
}

int sequenceNumberOffsetForPacketType(PacketType packetType) {
    return numBytesForPacketHeaderGivenPacketType(packetType) - sizeof(PacketSequenceNumber);
}

QByteArray hashFromPacketHeader(const QByteArray& packet) {
    return packet.mid(hashOffsetForPacketType(packetTypeForPacket(packet)), NUM_BYTES_MD5_HASH);
}

QByteArray hashForPacketAndConnectionUUID(const QByteArray& packet, const QUuid& connectionUUID) {
    return QCryptographicHash::hash(packet.mid(numBytesForPacketHeader(packet)) + connectionUUID.toRfc4122(),
                                    QCryptographicHash::Md5);
}

void replaceHashInPacketGivenType(QByteArray& packet, PacketType packetType, const QUuid& connectionUUID) {
    packet.replace(hashOffsetForPacketType(packetType), NUM_BYTES_MD5_HASH, 
            hashForPacketAndConnectionUUID(packet, connectionUUID));
}

void replaceHashInPacket(QByteArray& packet, const QUuid& connectionUUID) {
    replaceHashInPacketGivenType(packet, packetTypeForPacket(packet), connectionUUID);
}

void replaceSequenceNumberInPacketGivenType(QByteArray& packet, PacketType packetType, PacketSequenceNumber sequenceNumber) {
    packet.replace(sequenceNumberOffsetForPacketType(packetType), 
                   sizeof(PacketSequenceNumber), reinterpret_cast<char*>(&sequenceNumber));
}

void replaceSequenceNumberInPacket(QByteArray& packet, PacketSequenceNumber sequenceNumber) {
    replaceSequenceNumberInPacketGivenType(packet, packetTypeForPacket(packet), sequenceNumber);
} 

void replaceHashAndSequenceNumberInPacketGivenType(QByteArray& packet, PacketType packetType, 
        const QUuid& connectionUUID, PacketSequenceNumber sequenceNumber) {
    replaceHashInPacketGivenType(packet, packetType, connectionUUID);
    replaceSequenceNumberInPacketGivenType(packet, packetType, sequenceNumber);
}


void replaceHashAndSequenceNumberInPacket(QByteArray& packet, const QUuid& connectionUUID, PacketSequenceNumber sequenceNumber) {
    replaceHashAndSequenceNumberInPacketGivenType(packet, packetTypeForPacket(packet), connectionUUID, sequenceNumber);
}

PacketType packetTypeForPacket(const QByteArray& packet) {
    return (PacketType) arithmeticCodingValueFromBuffer(packet.data());
}

PacketType packetTypeForPacket(const char* packet) {
    return (PacketType) arithmeticCodingValueFromBuffer(packet);
}
