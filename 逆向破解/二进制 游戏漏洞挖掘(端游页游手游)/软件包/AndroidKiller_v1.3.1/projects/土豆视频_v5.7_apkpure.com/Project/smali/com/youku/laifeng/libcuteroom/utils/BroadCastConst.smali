.class public Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;
.super Ljava/lang/Object;
.source "BroadCastConst.java"


# static fields
.field public static BROADCAST_ATTATIONPAGE_HASLIVING:Ljava/lang/String;

.field public static BROADCAST_LOGIC_TOKENVALID:Ljava/lang/String;

.field public static BROADCAST_VERSION_UPGRAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "youku.laifeng.broadcast.attationpageliving"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->BROADCAST_ATTATIONPAGE_HASLIVING:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "youku.laifeng.broadcast.versionupgrade"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->BROADCAST_VERSION_UPGRAD:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "youku.laifeng.broadcast.tokenvalid"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->BROADCAST_LOGIC_TOKENVALID:Ljava/lang/String;

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
    .line 15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->BROADCAST_ATTATIONPAGE_HASLIVING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 18
    return-void
.end method

.method public static sendTokenValidBroadCast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->BROADCAST_LOGIC_TOKENVALID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public static sendVersionUpgradeBroadCast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->BROADCAST_VERSION_UPGRAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    return-void
.end method
