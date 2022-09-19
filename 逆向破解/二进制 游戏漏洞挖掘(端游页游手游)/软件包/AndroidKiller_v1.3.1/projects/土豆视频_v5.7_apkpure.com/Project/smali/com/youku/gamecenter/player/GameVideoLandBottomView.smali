.class public Lcom/youku/gamecenter/player/GameVideoLandBottomView;
.super Lcom/youku/gamecenter/player/GameVideoBottomView;
.source "GameVideoLandBottomView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/player/GameVideoBottomView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/player/GameVideoBottomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_video_bottom_view_land:I

    return v0
.end method
