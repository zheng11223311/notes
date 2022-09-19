.class Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;
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
    name = "GameDetailClickListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGame:Lcom/youku/gamecenter/data/GameInfo;

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;->mGame:Lcom/youku/gamecenter/data/GameInfo;

    .line 1001
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;->mGame:Lcom/youku/gamecenter/data/GameInfo;

    .line 1002
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;->mContext:Landroid/content/Context;

    .line 1003
    iput-object p3, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;->mSource:Ljava/lang/String;

    .line 1004
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;->mGame:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;->mSource:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    return-void
.end method
