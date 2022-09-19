.class synthetic Lcom/tudou/ui/fragment/ChannelSquareFragment$7;
.super Ljava/lang/Object;
.source "ChannelSquareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ChannelSquareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$tudou$ui$fragment$ChannelSquareFragment$NoContentTips:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->values()[Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$7;->$SwitchMap$com$tudou$ui$fragment$ChannelSquareFragment$NoContentTips:[I

    :try_start_0
    sget-object v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$7;->$SwitchMap$com$tudou$ui$fragment$ChannelSquareFragment$NoContentTips:[I

    sget-object v1, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->GONE:Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$7;->$SwitchMap$com$tudou$ui$fragment$ChannelSquareFragment$NoContentTips:[I

    sget-object v1, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->FAILED_CLASSFIES:Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
