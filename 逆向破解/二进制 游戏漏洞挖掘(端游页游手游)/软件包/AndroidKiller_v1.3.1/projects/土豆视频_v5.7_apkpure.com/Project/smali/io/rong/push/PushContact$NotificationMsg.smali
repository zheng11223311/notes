.class public Lio/rong/push/PushContact$NotificationMsg;
.super Ljava/lang/Object;
.source "PushContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationMsg"
.end annotation


# instance fields
.field private MsgChannelId:Ljava/lang/String;

.field private MsgChannelName:Ljava/lang/String;

.field private MsgChannelType:Ljava/lang/String;

.field private MsgContent:Ljava/lang/String;

.field private MsgTitle:Ljava/lang/String;

.field final synthetic this$0:Lio/rong/push/PushContact;


# direct methods
.method public constructor <init>(Lio/rong/push/PushContact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "channelType"    # Ljava/lang/String;
    .param p6, "channelName"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lio/rong/push/PushContact$NotificationMsg;->this$0:Lio/rong/push/PushContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lio/rong/push/PushContact$NotificationMsg;->MsgTitle:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lio/rong/push/PushContact$NotificationMsg;->MsgContent:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lio/rong/push/PushContact$NotificationMsg;->MsgChannelId:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lio/rong/push/PushContact$NotificationMsg;->MsgChannelType:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lio/rong/push/PushContact$NotificationMsg;->MsgChannelName:Ljava/lang/String;

    .line 42
    return-void
.end method
