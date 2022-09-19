.class public Lio/rong/notification/PushNotificationContact;
.super Ljava/lang/Object;
.source "PushNotificationContact.java"


# instance fields
.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/notification/PushNotificationContact;->messageList:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lio/rong/notification/PushNotificationContact;->userId:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lio/rong/notification/PushNotificationContact;->userName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public AddToMessageList(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgContent"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lio/rong/notification/PushNotificationContact;->messageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lio/rong/notification/PushNotificationContact;->messageList:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/rong/notification/PushNotificationContact;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/rong/notification/PushNotificationContact;->userName:Ljava/lang/String;

    return-object v0
.end method
