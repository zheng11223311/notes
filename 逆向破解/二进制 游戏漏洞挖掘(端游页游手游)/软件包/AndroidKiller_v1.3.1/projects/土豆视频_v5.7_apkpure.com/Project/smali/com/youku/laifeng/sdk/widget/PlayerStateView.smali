.class public Lcom/youku/laifeng/sdk/widget/PlayerStateView;
.super Landroid/widget/FrameLayout;
.source "PlayerStateView.java"


# static fields
.field public static final STATE_ERROR:I = 0x1

.field public static final STATE_LOADING:I = 0x2

.field public static final STATE_NETWORK_ERROR:I = 0x5

.field public static final STATE_NO_PLAY:I = 0x4

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PLAY_OVER:I = 0x6


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlayerLogo:Landroid/widget/ImageView;

.field private mPlayerMessageView:Landroid/widget/TextView;

.field private mPlayerProgressBar:Landroid/widget/ProgressBar;

.field private mState:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->init()V

    .line 45
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "lf_view_play_state"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "player_logo"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerLogo:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "player_loading"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerProgressBar:Landroid/widget/ProgressBar;

    .line 51
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "player_message"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerMessageView:Landroid/widget/TextView;

    .line 52
    return-void
.end method


# virtual methods
.method public getPlayerState()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mState:I

    return v0
.end method

.method public isPlayerStateViewVisible()Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerLogo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerLogo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerLogo:Landroid/widget/ImageView;

    .line 113
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 114
    return-void
.end method

.method public setPlayerState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 60
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p0, v3}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setVisibility(I)V

    .line 64
    :cond_1
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mState:I

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "string"

    const-string/jumbo v2, "str_player_notice"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerStateMessage(I)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "string"

    const-string/jumbo v2, "str_player_notice_no_video"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerStateMessage(I)V

    goto :goto_0

    .line 83
    :pswitch_4
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "string"

    const-string/jumbo v2, "str_player_notice_video_error"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerStateMessage(I)V

    goto :goto_0

    .line 87
    :pswitch_5
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "string"

    const-string/jumbo v2, "str_player_notice_no_video"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerStateMessage(I)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setPlayerStateMessage(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    return-void
.end method

.method public setPlayerStateViewGone()V
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public setVideoLoadingGone()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    return-void
.end method

.method public setVideoLoadingVisible()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->mPlayerProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 118
    return-void
.end method
