.class Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;
.super Ljava/lang/Object;
.source "GameCategoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/fragment/GameCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TitleClickListener"
.end annotation


# instance fields
.field private mCardTitle:Ljava/lang/String;

.field private mCategory:Lcom/youku/gamecenter/data/CategoryInfo;

.field private mContext:Landroid/content/Context;

.field private mFocusPosition:I

.field private mTagId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/gamecenter/data/CategoryInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/youku/gamecenter/data/CategoryInfo;
    .param p3, "tagId"    # Ljava/lang/String;
    .param p4, "position"    # I
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;->mContext:Landroid/content/Context;

    .line 413
    iput-object p3, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;->mTagId:Ljava/lang/String;

    .line 414
    iput p4, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;->mFocusPosition:I

    .line 415
    iput-object p2, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;->mCategory:Lcom/youku/gamecenter/data/CategoryInfo;

    .line 416
    iput-object p5, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;->mCardTitle:Ljava/lang/String;

    .line 417
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;->mContext:Landroid/content/Context;

    const-string v1, "category_page"

    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;->mTagId:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;->mCardTitle:Ljava/lang/String;

    iget v4, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;->mFocusPosition:I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;->mCategory:Lcom/youku/gamecenter/data/CategoryInfo;

    invoke-static/range {v0 .. v6}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameSubCategoryActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/youku/gamecenter/data/CategoryInfo;)V

    .line 422
    return-void
.end method
