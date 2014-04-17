//
//  AvatarHashMap.h
//  libraries/avatars/src
//
//  Created by Stephen AndrewMeadows on 1/28/2014.
//  Copyright 2014 High Fidelity, Inc.
//
//  Distributed under the Apache License, Version 2.0.
//  See the accompanying file LICENSE or http://www.apache.org/licenses/LICENSE-2.0.html
//

#ifndef hifi_AvatarHashMap_h
#define hifi_AvatarHashMap_h

#include <QtCore/QHash>
#include <QtCore/QSharedPointer>
#include <QtCore/QUuid>

#include <Node.h>

#include "AvatarData.h"

typedef QSharedPointer<AvatarData> AvatarSharedPointer;
typedef QHash<QUuid, AvatarSharedPointer> AvatarHash;

class AvatarHashMap {
public:
    AvatarHashMap();
    
    const AvatarHash& getAvatarHash() { return _avatarHash; }
    int size() const { return _avatarHash.size(); }

    virtual void insert(const QUuid& id, AvatarSharedPointer avatar);

protected:
    virtual AvatarHash::iterator erase(const AvatarHash::iterator& iterator);
    
    virtual AvatarSharedPointer newSharedAvatar();
    virtual void sharedAvatarAddedToHash(const AvatarSharedPointer& sharedAvatar,
                                         const QWeakPointer<Node>& mixerWeakPointer) = 0;
    AvatarSharedPointer matchingOrNewAvatar(const QUuid& nodeUUID, const QWeakPointer<Node>& mixerWeakPointer);
    
    void processAvatarDataPacket(const QByteArray& packet, const QWeakPointer<Node>& mixerWeakPointer);
    void processAvatarIdentityPacket(const QByteArray& packet, const QWeakPointer<Node>& mixerWeakPointer);
    void processAvatarBillboardPacket(const QByteArray& packet, const QWeakPointer<Node>& mixerWeakPointer);
    void processKillAvatar(const QByteArray& datagram);

    AvatarHash _avatarHash;
};

#endif // hifi_AvatarHashMap_h
