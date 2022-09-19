.class Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;
.super Ljava/lang/Object;
.source "GameInfoListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/widgets/GameInfoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GameActionClickListener"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mGame:Lcom/youku/gamecenter/data/GameInfo;

.field private mLocation:I

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "location"    # I
    .param p5, "icon"    # Landroid/widget/ImageView;

    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;->mGame:Lcom/youku/gamecenter/data/GameInfo;

    .line 651
    iput-object p2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;->mGame:Lcom/youku/gamecenter/data/GameInfo;

    .line 652
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;->mContext:Landroid/content/Context;

    .line 653
    iput-object p3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;->mSource:Ljava/lang/String;

    .line 654
    iput-object p5, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;->icon:Landroid/widget/ImageView;

    .line 655
    iput p4, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;->mLocation:I

    .line 656
    return-void
.end method

.method private handleGameClicked(Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 665
    const-string v5, ""

    .line 666
    .local v5, "statistics":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;->icon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;->mLocation:I

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleDownloadAction(Landroid/content/Context;Landroid/widget/ImageView;ILcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;->mGame:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;->mSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;->handleGameClicked(Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    .line 661
    return-void
.end method
