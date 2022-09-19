.class public Lcom/youku/laifeng/broadcast/BroadCastConst;
.super Ljava/lang/Object;
.source "BroadCastConst.java"


# static fields
.field public static BROADCAST_ATTATION:Ljava/lang/String;

.field public static BROADCAST_ATTATIONPAGE:Ljava/lang/String;

.field public static BROADCAST_ATTATIONPAGE_HASLIVING:Ljava/lang/String;

.field public static BROADCAST_ATTATION_ROOMATTENTIONED:Ljava/lang/String;

.field public static BROADCAST_ATTATION_ROOMID:Ljava/lang/String;

.field public static BROADCAST_GOTO_RECOMMEND_FROM_WATCH_RECORD:Ljava/lang/String;

.field public static BROADCAST_LOGIC_TOKENVALID:Ljava/lang/String;

.field public static BROADCAST_LOGIN_SUCCESS:Ljava/lang/String;

.field public static BROADCAST_LOGIN_SUCCESS_LOGINED:Ljava/lang/String;

.field public static BROADCAST_SEND_PRESENT:Ljava/lang/String;

.field public static BROADCAST_VERSION_UPGRAD:Ljava/lang/String;

.field public static BROADCAST_WXRESULT:Ljava/lang/String;

.field public static BROADCAST_WXRESULT_WXRES:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "youku.laifeng.broadcast.attation"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_ATTATION:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "roomid"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_ATTATION_ROOMID:Ljava/lang/String;

    .line 13
    const-string v0, "isattention"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_ATTATION_ROOMATTENTIONED:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "youku.laifeng.broadcast.attationpage"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_ATTATIONPAGE:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "youku.laifeng.broadcast.attationpageliving"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_ATTATIONPAGE_HASLIVING:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "youku.laifeng.broadcast.loginsuccess"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_LOGIN_SUCCESS:Ljava/lang/String;

    .line 52
    const-string v0, "islogined"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_LOGIN_SUCCESS_LOGINED:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "youku.laifeng.broadcast.versionupgrade"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_VERSION_UPGRAD:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "youku.laifeng.broadcast.sendpresent"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_SEND_PRESENT:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "youku.laifeng.broadcast.wxresult"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_WXRESULT:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "wxres"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_WXRESULT_WXRES:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "youku.laifeng.broadcast.gotorecommend"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_GOTO_RECOMMEND_FROM_WATCH_RECORD:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "youku.laifeng.broadcast.tokenvalid"

    sput-object v0, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_LOGIC_TOKENVALID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendAttentionPageALivingBroadCast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_ATTATIONPAGE_HASLIVING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public static sendAttentionPageBroadCast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_ATTATIONPAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 34
    return-void
.end method

.method public static sendGotoRecommendBroadCast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_GOTO_RECOMMEND_FROM_WATCH_RECORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    return-void
.end method

.method public static sendLoginSuccessBroadCast(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "islogined"    # Z

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_LOGIN_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_LOGIN_SUCCESS_LOGINED:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public static sendRoomAttentionBroadCast(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roomid"    # I
    .param p2, "isatt"    # Z

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_ATTATION_ROOMID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_ATTATION_ROOMATTENTIONED:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_ATTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public static sendSendPresentBroadCast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_SEND_PRESENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public static sendTokenValidBroadCast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_LOGIC_TOKENVALID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public static sendVersionUpgradeBroadCast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_VERSION_UPGRAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public static sendWXResBroadCast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # I

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_WXRESULT_WXRES:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    sget-object v1, Lcom/youku/laifeng/broadcast/BroadCastConst;->BROADCAST_WXRESULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
