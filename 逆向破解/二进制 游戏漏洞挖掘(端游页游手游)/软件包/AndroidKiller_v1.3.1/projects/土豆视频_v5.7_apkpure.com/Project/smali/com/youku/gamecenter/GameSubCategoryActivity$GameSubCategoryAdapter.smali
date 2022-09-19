.class Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameSubCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameSubCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GameSubCategoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/support/v4/app/FragmentActivity;

.field public mFrom:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSortTypeResId:Ljava/lang/Integer;

.field private mSource:Ljava/lang/String;

.field private mTabId:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 628
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 624
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mSortTypeResId:Ljava/lang/Integer;

    .line 629
    iput-object p1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    .line 630
    iput-object p2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mSource:Ljava/lang/String;

    .line 631
    iput-object p3, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mFrom:Ljava/lang/String;

    .line 632
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 633
    return-void
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method private getDownloadStr(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 959
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mSortTypeResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->total_downloads:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 834
    new-instance v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;-><init>(Lcom/youku/gamecenter/GameSubCategoryActivity$1;)V

    .line 836
    .local v0, "holder":Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 837
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 838
    sget v1, Lcom/youku/gamecenter/R$id;->item_recommendtype:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    .line 840
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_recommendtype:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    .line 843
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_size:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 844
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_downloadtimes:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadTimes:Landroid/widget/TextView;

    .line 846
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_des:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->des:Landroid/widget/TextView;

    .line 847
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_rate:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    .line 849
    sget v1, Lcom/youku/gamecenter/R$id;->count_downloadtimes:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    .line 851
    sget v1, Lcom/youku/gamecenter/R$id;->progress_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    .line 853
    sget v1, Lcom/youku/gamecenter/R$id;->rootview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/widgets/ProgressView;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    .line 855
    sget v1, Lcom/youku/gamecenter/R$id;->progress_rate:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressRate:Landroid/widget/TextView;

    .line 858
    sget v1, Lcom/youku/gamecenter/R$id;->action_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    .line 859
    sget v1, Lcom/youku/gamecenter/R$id;->list_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->listItem:Landroid/view/View;

    .line 861
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_size1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    .line 862
    sget v1, Lcom/youku/gamecenter/R$id;->download_velocity:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    .line 864
    return-object v0
.end method

.method private isHighSdkVersion()Z
    .locals 1

    .prologue
    .line 887
    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->isHighSdkVersion()Z

    move-result v0

    return v0
.end method

.method private isUpdatePartly(Ljava/lang/String;Landroid/view/View;)Z
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 869
    sget v2, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 883
    :cond_0
    :goto_0
    return v1

    .line 873
    :cond_1
    sget v2, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 875
    .local v0, "storedPackName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 879
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->isHighSdkVersion()Z

    move-result v1

    goto :goto_0
.end method

.method private isValidType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "recommend_type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 819
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    :goto_0
    return v1

    .line 824
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    const/4 v1, 0x1

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private onActionButtonClickListener(ILcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 976
    new-instance v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$2;-><init>(Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;ILcom/youku/gamecenter/data/GameInfo;)V

    return-object v0
.end method

.method private onItemClickListener(ILcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "position"    # I
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 964
    new-instance v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$1;-><init>(Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;Lcom/youku/gamecenter/data/GameInfo;I)V

    return-object v0
.end method

.method private setProgressUI(Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 4
    .param p1, "holder"    # Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 717
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 718
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 720
    iget-object v0, p2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_2

    .line 723
    :cond_0
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 724
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v1, p2, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 725
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p2, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    invoke-static {v2, v3}, Lcom/youku/gamecenter/util/CommonUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    sget v1, Lcom/youku/gamecenter/R$string;->game_download_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 728
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/youku/gamecenter/R$color;->game_gamelist_item_size_text_color:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 730
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/youku/gamecenter/R$color;->game_gamelist_item_size_text_color:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    iget-object v0, p2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_1

    .line 734
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    sget v1, Lcom/youku/gamecenter/R$string;->game_download_pending:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 758
    :cond_1
    :goto_0
    return-void

    .line 739
    :cond_2
    iget-object v0, p2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_3

    .line 740
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 742
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v1, p2, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 743
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p2, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    invoke-static {v2, v3}, Lcom/youku/gamecenter/util/CommonUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget v1, p2, Lcom/youku/gamecenter/data/GameInfo;->downloadVelocity:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/youku/gamecenter/util/CommonUtils;->formatDownloadVelocity(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/youku/gamecenter/R$color;->game_gamelist_item_downloading_color:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 750
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/youku/gamecenter/R$color;->game_gamelist_item_downloading_color:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 756
    :cond_3
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 757
    iget-object v0, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRecomUI(Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 5
    .param p1, "holder"    # Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 762
    invoke-virtual {p2}, Lcom/youku/gamecenter/data/GameInfo;->isPromotion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 764
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v2, Lcom/youku/gamecenter/R$drawable;->game_reom_type_tg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 766
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 815
    :goto_0
    return-void

    .line 771
    :cond_0
    invoke-virtual {p2}, Lcom/youku/gamecenter/data/GameInfo;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 773
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 775
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    sget v2, Lcom/youku/gamecenter/R$drawable;->game_reom_type_present:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 779
    :cond_1
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 780
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 782
    iget-object v1, p2, Lcom/youku/gamecenter/data/GameInfo;->recommend_type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->isValidType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 783
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 784
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 788
    :cond_2
    iget-object v1, p2, Lcom/youku/gamecenter/data/GameInfo;->recommend_type:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 789
    .local v0, "recommendType":I
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 790
    packed-switch v0, :pswitch_data_0

    .line 812
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 792
    :pswitch_0
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v2, Lcom/youku/gamecenter/R$drawable;->game_reom_type_rm:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 796
    :pswitch_1
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v2, Lcom/youku/gamecenter/R$drawable;->game_reom_type_jp:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 800
    :pswitch_2
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v2, Lcom/youku/gamecenter/R$drawable;->game_reom_type_tj:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 804
    :pswitch_3
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v2, Lcom/youku/gamecenter/R$drawable;->game_reom_type_xp:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 808
    :pswitch_4
    iget-object v1, p1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v2, Lcom/youku/gamecenter/R$drawable;->game_reom_type_sf:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setViewHolderDatas(ILcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v6, 0x0

    .line 686
    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->setRecomUI(Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 688
    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->setProgressUI(Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 690
    iget-object v2, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_list_item_default:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 692
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v2

    invoke-virtual {p3}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 695
    iget-object v2, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/youku/gamecenter/R$string;->game_size:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "gameSize":Ljava/lang/String;
    iget-object v2, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    invoke-direct {p0, p3}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->getDownloadStr(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "downloadStr":Ljava/lang/String;
    iget-object v2, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadTimes:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v2, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 702
    iget-object v2, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->des:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object v2, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->des:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameInfo;->short_desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v2, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v3, v3, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 706
    iget-object v2, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v4, v4, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v3, v4}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 708
    iget-object v2, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v3, v3, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 709
    iget-object v2, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, p3}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->onActionButtonClickListener(ILcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    iget-object v2, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->listItem:Landroid/view/View;

    invoke-direct {p0, p1, p3}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->onItemClickListener(ILcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    return-void
.end method

.method private setViewHolderDatasPartly(ILcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 893
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 894
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 895
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v1, v1, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 896
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 898
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v1, v1, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 900
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 901
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->des:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 902
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->des:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/gamecenter/data/GameInfo;->short_desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_2

    .line 907
    :cond_0
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 908
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v1, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 909
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p3, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    invoke-static {v2, v3}, Lcom/youku/gamecenter/util/CommonUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    sget v1, Lcom/youku/gamecenter/R$string;->game_download_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 912
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/youku/gamecenter/R$color;->game_gamelist_item_size_text_color:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 914
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/youku/gamecenter/R$color;->game_gamelist_item_size_text_color:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 917
    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_1

    .line 918
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    sget v1, Lcom/youku/gamecenter/R$string;->game_download_pending:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 943
    :cond_1
    :goto_0
    return-void

    .line 923
    :cond_2
    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_3

    .line 924
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    invoke-virtual {v0, v3}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 926
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v1, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 927
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p3, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    invoke-static {v2, v3}, Lcom/youku/gamecenter/util/CommonUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget v1, p3, Lcom/youku/gamecenter/data/GameInfo;->downloadVelocity:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/youku/gamecenter/util/CommonUtils;->formatDownloadVelocity(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/youku/gamecenter/R$color;->game_gamelist_item_downloading_color:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 934
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/youku/gamecenter/R$color;->game_gamelist_item_downloading_color:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 940
    :cond_3
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 941
    iget-object v0, p2, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 946
    iget-object v3, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 954
    :cond_0
    :goto_0
    return v2

    .line 949
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 950
    .local v0, "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 951
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 641
    const/4 v0, 0x0

    .line 643
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/youku/gamecenter/data/GameInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 647
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->getItem(I)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 651
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 658
    iget-object v3, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 659
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    if-nez p2, :cond_0

    .line 660
    iget-object v3, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/youku/gamecenter/R$layout;->listview_gamelist_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 661
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;

    move-result-object v0

    .line 662
    .local v0, "holder":Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 663
    const/4 v2, 0x0

    .line 670
    .local v2, "updatePartly":Z
    :goto_0
    sget v3, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    iget-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 673
    if-eqz v2, :cond_1

    .line 674
    invoke-direct {p0, p1, v0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->setViewHolderDatasPartly(ILcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 680
    :goto_1
    return-object p2

    .line 665
    .end local v0    # "holder":Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;
    .end local v2    # "updatePartly":Z
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;

    .line 667
    .restart local v0    # "holder":Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->isUpdatePartly(Ljava/lang/String;Landroid/view/View;)Z

    move-result v2

    .restart local v2    # "updatePartly":Z
    goto :goto_0

    .line 678
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->setViewHolderDatas(ILcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    iput-object p1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->mList:Ljava/util/List;

    .line 637
    return-void
.end method
