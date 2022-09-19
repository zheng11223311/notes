.class Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;
.super Ljava/lang/Object;
.source "GameHomeBoxAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GameActionClickListener"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mGame:Lcom/youku/gamecenter/data/GameInfo;

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/widget/ImageView;

    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;->mGame:Lcom/youku/gamecenter/data/GameInfo;

    .line 1022
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;->mGame:Lcom/youku/gamecenter/data/GameInfo;

    .line 1023
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;->mContext:Landroid/content/Context;

    .line 1024
    iput-object p3, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;->mSource:Ljava/lang/String;

    .line 1025
    iput-object p4, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;->icon:Landroid/widget/ImageView;

    .line 1026
    return-void
.end method

.method private handleGameClicked(Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 1035
    const-string v5, ""

    .line 1036
    .local v5, "statistics":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;->icon:Landroid/widget/ImageView;

    const/4 v2, -0x1

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleDownloadAction(Landroid/content/Context;Landroid/widget/ImageView;ILcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->deleteHomeRecomDownloadItem(Landroid/content/Context;Ljava/lang/String;)V

    .line 1039
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;->mGame:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;->mSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;->handleGameClicked(Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    .line 1031
    return-void
.end method
