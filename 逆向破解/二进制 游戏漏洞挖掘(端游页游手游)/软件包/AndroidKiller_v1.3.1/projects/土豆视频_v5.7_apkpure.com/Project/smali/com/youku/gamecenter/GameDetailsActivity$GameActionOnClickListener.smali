.class Lcom/youku/gamecenter/GameDetailsActivity$GameActionOnClickListener;
.super Ljava/lang/Object;
.source "GameDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameActionOnClickListener"
.end annotation


# instance fields
.field private mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field private mIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/youku/gamecenter/GameDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/data/GameInfo;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p3, "icon"    # Landroid/widget/ImageView;

    .prologue
    .line 1722
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameActionOnClickListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1723
    iput-object p2, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameActionOnClickListener;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 1724
    iput-object p3, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameActionOnClickListener;->mIcon:Landroid/widget/ImageView;

    .line 1725
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameActionOnClickListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameActionOnClickListener;->mIcon:Landroid/widget/ImageView;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameActionOnClickListener;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    const-string v4, "37"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleDownloadAction(Landroid/content/Context;Landroid/widget/ImageView;ILcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    return-void
.end method
