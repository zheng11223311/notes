.class public Lcom/youku/vo/TudouSwitchesBean;
.super Ljava/lang/Object;
.source "TudouSwitchesBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/TudouSwitchesBean$Show3Icon;,
        Lcom/youku/vo/TudouSwitchesBean$Switches;
    }
.end annotation


# static fields
.field public static final QQ:I = 0x1

.field public static final Scan:I = 0x2

.field public static final Taobao:I = 0x3

.field public static final Weibo:I


# instance fields
.field public error:I

.field public msg:Ljava/lang/String;

.field public switches:Lcom/youku/vo/TudouSwitchesBean$Switches;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public getSensitiveSwitch()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v0, v0, Lcom/youku/vo/TudouSwitchesBean$Switches;->sensitive_word:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getShow3IconList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/TudouSwitchesBean$Show3Icon;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "icons":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/TudouSwitchesBean$Show3Icon;>;"
    iget-object v2, p0, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-object v1

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v2, v2, Lcom/youku/vo/TudouSwitchesBean$Switches;->tudou_weibo_account:I

    if-ne v2, v3, :cond_2

    .line 54
    new-instance v0, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;

    invoke-direct {v0, p0}, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;-><init>(Lcom/youku/vo/TudouSwitchesBean;)V

    .line 55
    .local v0, "icon":Lcom/youku/vo/TudouSwitchesBean$Show3Icon;
    const/4 v2, 0x0

    iput v2, v0, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;->type:I

    .line 56
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v0    # "icon":Lcom/youku/vo/TudouSwitchesBean$Show3Icon;
    :cond_2
    iget-object v2, p0, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v2, v2, Lcom/youku/vo/TudouSwitchesBean$Switches;->tudou_qq_account:I

    if-ne v2, v3, :cond_3

    .line 59
    new-instance v0, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;

    invoke-direct {v0, p0}, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;-><init>(Lcom/youku/vo/TudouSwitchesBean;)V

    .line 60
    .restart local v0    # "icon":Lcom/youku/vo/TudouSwitchesBean$Show3Icon;
    iput v3, v0, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;->type:I

    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v0    # "icon":Lcom/youku/vo/TudouSwitchesBean$Show3Icon;
    :cond_3
    iget-object v2, p0, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v2, v2, Lcom/youku/vo/TudouSwitchesBean$Switches;->tudou_scan_switch:I

    if-ne v2, v3, :cond_4

    .line 64
    new-instance v0, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;

    invoke-direct {v0, p0}, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;-><init>(Lcom/youku/vo/TudouSwitchesBean;)V

    .line 65
    .restart local v0    # "icon":Lcom/youku/vo/TudouSwitchesBean$Show3Icon;
    const/4 v2, 0x2

    iput v2, v0, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;->type:I

    .line 66
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v0    # "icon":Lcom/youku/vo/TudouSwitchesBean$Show3Icon;
    :cond_4
    iget-object v2, p0, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v2, v2, Lcom/youku/vo/TudouSwitchesBean$Switches;->tudou_taobao_account:I

    if-ne v2, v3, :cond_0

    .line 69
    new-instance v0, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;

    invoke-direct {v0, p0}, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;-><init>(Lcom/youku/vo/TudouSwitchesBean;)V

    .line 70
    .restart local v0    # "icon":Lcom/youku/vo/TudouSwitchesBean$Show3Icon;
    const/4 v2, 0x3

    iput v2, v0, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;->type:I

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getWatchAndChat()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v1, v1, Lcom/youku/vo/TudouSwitchesBean$Switches;->watch_and_chat:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
