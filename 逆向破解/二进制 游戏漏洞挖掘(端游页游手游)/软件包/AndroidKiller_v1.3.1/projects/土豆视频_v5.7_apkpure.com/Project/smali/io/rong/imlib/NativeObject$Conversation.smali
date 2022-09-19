.class public Lio/rong/imlib/NativeObject$Conversation;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/NativeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Conversation"
.end annotation


# instance fields
.field private ReceivedTime:J

.field private UId:Ljava/lang/String;

.field private blockPush:Z

.field private content:[B

.field private conversationTitle:Ljava/lang/String;

.field private conversationType:I

.field private draft:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private isTop:Z

.field private lastTime:J

.field private messageContent:Ljava/lang/String;

.field private messageDirection:Z

.field private messageId:I

.field private objectName:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;

.field private readStatus:I

.field private receiveStatus:I

.field private senderName:Ljava/lang/String;

.field private senderUserId:Ljava/lang/String;

.field private sentStatus:I

.field private sentTime:J

.field private targetId:Ljava/lang/String;

.field private unreadMessageCount:I

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userPortrait:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonObj"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->content:[B

    return-object v0
.end method

.method public getConversationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->conversationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->conversationType:I

    return v0
.end method

.method public getDraft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->draft:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTime()J
    .locals 2

    .prologue
    .line 507
    iget-wide v0, p0, Lio/rong/imlib/NativeObject$Conversation;->lastTime:J

    return-wide v0
.end method

.method public getMessageContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->messageContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->messageId:I

    return v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReadStatus()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->readStatus:I

    return v0
.end method

.method public getReceiveStatus()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->receiveStatus:I

    return v0
.end method

.method public getReceivedTime()J
    .locals 2

    .prologue
    .line 475
    iget-wide v0, p0, Lio/rong/imlib/NativeObject$Conversation;->ReceivedTime:J

    return-wide v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->senderUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSentStatus()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->sentStatus:I

    return v0
.end method

.method public getSentTime()J
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lio/rong/imlib/NativeObject$Conversation;->sentTime:J

    return-wide v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->UId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->unreadMessageCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPortrait()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->userPortrait:Ljava/lang/String;

    return-object v0
.end method

.method public isBlockPush()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lio/rong/imlib/NativeObject$Conversation;->blockPush:Z

    return v0
.end method

.method public isMessageDirection()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lio/rong/imlib/NativeObject$Conversation;->messageDirection:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lio/rong/imlib/NativeObject$Conversation;->isTop:Z

    return v0
.end method

.method public setBlockPush(Z)V
    .locals 0
    .param p1, "blockPush"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Lio/rong/imlib/NativeObject$Conversation;->blockPush:Z

    .line 504
    return-void
.end method

.method public setContent([B)V
    .locals 0
    .param p1, "content"    # [B

    .prologue
    .line 551
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->content:[B

    .line 552
    return-void
.end method

.method public setConversationTitle([B)V
    .locals 1
    .param p1, "conversationTitle"    # [B

    .prologue
    .line 415
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->conversationTitle:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setConversationType(I)V
    .locals 0
    .param p1, "conversationType"    # I

    .prologue
    .line 399
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->conversationType:I

    .line 400
    return-void
.end method

.method public setDraft(Ljava/lang/String;)V
    .locals 0
    .param p1, "draft"    # Ljava/lang/String;

    .prologue
    .line 431
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->draft:Ljava/lang/String;

    .line 432
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 559
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->extra:Ljava/lang/String;

    .line 560
    return-void
.end method

.method public setIsTop(Z)V
    .locals 0
    .param p1, "isTop"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lio/rong/imlib/NativeObject$Conversation;->isTop:Z

    .line 392
    return-void
.end method

.method public setLastTime(J)V
    .locals 1
    .param p1, "lastTime"    # J

    .prologue
    .line 511
    iput-wide p1, p0, Lio/rong/imlib/NativeObject$Conversation;->lastTime:J

    .line 512
    return-void
.end method

.method public setMessageContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageContent"    # Ljava/lang/String;

    .prologue
    .line 495
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->messageContent:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public setMessageDirection(Z)V
    .locals 0
    .param p1, "messageDirection"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Lio/rong/imlib/NativeObject$Conversation;->messageDirection:Z

    .line 388
    return-void
.end method

.method public setMessageId(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 455
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->messageId:I

    .line 456
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->objectName:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "portraitUrl"    # Ljava/lang/String;

    .prologue
    .line 567
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->portraitUrl:Ljava/lang/String;

    .line 568
    return-void
.end method

.method public setReadStatus(I)V
    .locals 0
    .param p1, "readStatus"    # I

    .prologue
    .line 543
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->readStatus:I

    .line 544
    return-void
.end method

.method public setReceiveStatus(I)V
    .locals 0
    .param p1, "receiveStatus"    # I

    .prologue
    .line 463
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->receiveStatus:I

    .line 464
    return-void
.end method

.method public setReceivedTime(J)V
    .locals 1
    .param p1, "receivedTime"    # J

    .prologue
    .line 479
    iput-wide p1, p0, Lio/rong/imlib/NativeObject$Conversation;->ReceivedTime:J

    .line 480
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderName"    # Ljava/lang/String;

    .prologue
    .line 487
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->senderName:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public setSenderUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderUserId"    # Ljava/lang/String;

    .prologue
    .line 379
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->senderUserId:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setSentStatus(I)V
    .locals 0
    .param p1, "sentStatus"    # I

    .prologue
    .line 471
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->sentStatus:I

    .line 472
    return-void
.end method

.method public setSentTime(J)V
    .locals 1
    .param p1, "sentTime"    # J

    .prologue
    .line 371
    iput-wide p1, p0, Lio/rong/imlib/NativeObject$Conversation;->sentTime:J

    .line 372
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->targetId:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setTop(Z)V
    .locals 0
    .param p1, "isTop"    # Z

    .prologue
    .line 423
    iput-boolean p1, p0, Lio/rong/imlib/NativeObject$Conversation;->isTop:Z

    .line 424
    return-void
.end method

.method public setUId(Ljava/lang/String;)V
    .locals 0
    .param p1, "UId"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->UId:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setUnreadMessageCount(I)V
    .locals 0
    .param p1, "unreadMessageCount"    # I

    .prologue
    .line 439
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->unreadMessageCount:I

    .line 440
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 519
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->userId:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->userName:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public setUserPortrait(Ljava/lang/String;)V
    .locals 0
    .param p1, "userPortrait"    # Ljava/lang/String;

    .prologue
    .line 535
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->userPortrait:Ljava/lang/String;

    .line 536
    return-void
.end method
