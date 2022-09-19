.class public Lio/rong/push/PushContact;
.super Ljava/lang/Object;
.source "PushContact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/PushContact$NotificationMsg;
    }
.end annotation


# instance fields
.field private UserId:Ljava/lang/String;

.field private UserName:Ljava/lang/String;

.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/push/PushContact$NotificationMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/push/PushContact;->messageList:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lio/rong/push/PushContact;->UserId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lio/rong/push/PushContact;->UserName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public AddToMessageList(Lio/rong/push/PushContact$NotificationMsg;)V
    .locals 1
    .param p1, "msg"    # Lio/rong/push/PushContact$NotificationMsg;

    .prologue
    .line 25
    iget-object v0, p0, Lio/rong/push/PushContact;->messageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lio/rong/push/PushContact;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/push/PushContact$NotificationMsg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/push/PushContact;->messageList:Ljava/util/List;

    return-object v0
.end method
