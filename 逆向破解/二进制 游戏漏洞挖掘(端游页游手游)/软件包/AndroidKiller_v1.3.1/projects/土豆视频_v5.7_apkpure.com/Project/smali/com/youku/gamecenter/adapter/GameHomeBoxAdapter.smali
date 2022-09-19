.class public Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameHomeBoxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;,
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;,
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$BannerViewHolder;,
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;,
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;,
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;,
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;,
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;,
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;,
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameMoreClickListener;,
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;,
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;,
        Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameH5CardClickListener;
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_BANNER:I = 0x2

.field public static final ITEM_TYPE_CARD_POSTER:I = 0x1

.field public static final ITEM_TYPE_CARD_TITLE:I = 0x0

.field public static final ITEM_TYPE_H5_ACTIVITIES:I = 0x6

.field public static final ITEM_TYPE_H5_SUBJECT:I = 0x5

.field public static final ITEM_TYPE_MAX_COUNT:I = 0x7

.field public static final ITEM_TYPE_MYGAME:I = 0x4

.field public static final ITEM_TYPE_RECOM:I = 0x3


# instance fields
.field private mActivity:Lcom/youku/gamecenter/GameBaseActivity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/IGameHomeCardAble;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mList:Ljava/util/List;

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/youku/gamecenter/GameBaseActivity;

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    return-void
.end method

.method private createViewByType(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 827
    const/4 v0, -0x1

    .line 828
    .local v0, "resId":I
    packed-switch p2, :pswitch_data_0

    .line 849
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "error type, createViewByType failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 830
    :pswitch_0
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_home_item_mygame:I

    .line 853
    :goto_0
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 833
    :pswitch_1
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_home_item_recom:I

    .line 834
    goto :goto_0

    .line 836
    :pswitch_2
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_home_item_card:I

    .line 837
    goto :goto_0

    .line 839
    :pswitch_3
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_home_item_card:I

    .line 840
    goto :goto_0

    .line 842
    :pswitch_4
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_home_item_banner:I

    .line 843
    goto :goto_0

    .line 846
    :pswitch_5
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_home_activities_item_card:I

    .line 847
    goto :goto_0

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private createViewHolderByType(Landroid/view/View;II)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "position"    # I

    .prologue
    .line 643
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 644
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->initMyGameViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;

    move-result-object v0

    .line 663
    :goto_0
    return-object v0

    .line 647
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 648
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->initRecomViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;

    move-result-object v0

    goto :goto_0

    .line 651
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 652
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->initBannerViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;

    move-result-object v0

    goto :goto_0

    .line 655
    :cond_2
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 656
    :cond_3
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->initCardViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;

    move-result-object v0

    goto :goto_0

    .line 659
    :cond_4
    const/4 v0, 0x6

    if-eq p2, v0, :cond_5

    const/4 v0, 0x5

    if-ne p2, v0, :cond_6

    .line 660
    :cond_5
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->initH5CardViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;

    move-result-object v0

    goto :goto_0

    .line 663
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getItemByPosition(ILcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;
    .locals 1
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->game_item_1_1:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    .line 337
    :goto_0
    return-object v0

    .line 322
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 323
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->game_item_1_2:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    goto :goto_0

    .line 325
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 326
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->game_item_1_3:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    goto :goto_0

    .line 328
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 329
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->game_item_2_1:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    goto :goto_0

    .line 331
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 332
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->game_item_2_2:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    goto :goto_0

    .line 334
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 335
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->game_item_2_3:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    goto :goto_0

    .line 337
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMyGamePrompt(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 630
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_0

    .line 631
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->getPromptDatas(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    :goto_0
    return-object v0

    .line 634
    :cond_0
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_1

    .line 635
    const-string/jumbo v0, "\u53ef\u4ee5\u5f00\u59cb\u73a9\u6e38\u620f\u4e86"

    goto :goto_0

    .line 637
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private initBannerViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 749
    new-instance v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$BannerViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$BannerViewHolder;-><init>()V

    .line 751
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$BannerViewHolder;
    sget v1, Lcom/youku/gamecenter/R$id;->game_card_banner_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$BannerViewHolder;->image:Landroid/widget/ImageView;

    .line 754
    sget v1, Lcom/youku/gamecenter/R$id;->game_index_banner_marker:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$BannerViewHolder;->marker:Landroid/widget/TextView;

    .line 756
    return-object v0
.end method

.method private initCardTopViewHolder(Landroid/view/View;Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;

    .prologue
    .line 799
    sget v0, Lcom/youku/gamecenter/R$id;->card_top_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_top_layout:Landroid/view/View;

    .line 800
    sget v0, Lcom/youku/gamecenter/R$id;->card_top_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_title:Landroid/widget/TextView;

    .line 802
    sget v0, Lcom/youku/gamecenter/R$id;->card_top_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_more_layout:Landroid/view/View;

    .line 803
    return-void
.end method

.method private initCardViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 683
    new-instance v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;-><init>()V

    .line 685
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;
    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->initCardTopViewHolder(Landroid/view/View;Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;)V

    .line 687
    sget v1, Lcom/youku/gamecenter/R$id;->game_card_poster:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->poster:Landroid/widget/ImageView;

    .line 689
    sget v1, Lcom/youku/gamecenter/R$id;->game_card_poster_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->posterContainer:Landroid/view/View;

    .line 691
    sget v1, Lcom/youku/gamecenter/R$id;->game_card_layout_1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->layout_1:Landroid/view/View;

    .line 693
    iget-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->layout_1:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->initGameViewItem(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;Landroid/view/View;I)V

    .line 695
    sget v1, Lcom/youku/gamecenter/R$id;->game_card_split_line:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->split_line:Landroid/view/View;

    .line 697
    sget v1, Lcom/youku/gamecenter/R$id;->game_card_layout_2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->layout_2:Landroid/view/View;

    .line 699
    iget-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->layout_2:Landroid/view/View;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->initGameViewItem(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;Landroid/view/View;I)V

    .line 701
    return-object v0
.end method

.method private initGameViewItem(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;Landroid/view/View;I)V
    .locals 4
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;
    .param p2, "layout"    # Landroid/view/View;
    .param p3, "postion"    # I

    .prologue
    .line 707
    new-instance v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;-><init>()V

    .line 708
    .local v0, "item1":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_item_1:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->item_layout:Landroid/view/View;

    .line 709
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_title1:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->title:Landroid/widget/TextView;

    .line 710
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_icon1:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->icon:Landroid/widget/ImageView;

    .line 711
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_recom_type_present1:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->present:Landroid/widget/ImageView;

    .line 713
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_desc1:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->type_size:Landroid/widget/TextView;

    .line 714
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_action1:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    iput-object v3, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->action:Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    .line 716
    new-instance v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    invoke-direct {v1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;-><init>()V

    .line 717
    .local v1, "item2":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_item_2:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->item_layout:Landroid/view/View;

    .line 718
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_title2:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->title:Landroid/widget/TextView;

    .line 719
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_icon2:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->icon:Landroid/widget/ImageView;

    .line 720
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_recom_type_present2:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->present:Landroid/widget/ImageView;

    .line 722
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_desc2:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->type_size:Landroid/widget/TextView;

    .line 723
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_action2:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    iput-object v3, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->action:Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    .line 725
    new-instance v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    invoke-direct {v2}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;-><init>()V

    .line 726
    .local v2, "item3":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_item_3:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->item_layout:Landroid/view/View;

    .line 727
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_title3:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->title:Landroid/widget/TextView;

    .line 728
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_icon3:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->icon:Landroid/widget/ImageView;

    .line 729
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_recom_type_present3:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->present:Landroid/widget/ImageView;

    .line 731
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_desc3:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->type_size:Landroid/widget/TextView;

    .line 732
    sget v3, Lcom/youku/gamecenter/R$id;->game_card_action3:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    iput-object v3, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->action:Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    .line 734
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 735
    iput-object v0, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->game_item_1_1:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    .line 736
    iput-object v1, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->game_item_1_2:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    .line 737
    iput-object v2, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->game_item_1_3:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    .line 740
    :cond_0
    const/4 v3, 0x2

    if-ne p3, v3, :cond_1

    .line 741
    iput-object v0, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->game_item_2_1:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    .line 742
    iput-object v1, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->game_item_2_2:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    .line 743
    iput-object v2, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->game_item_2_3:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    .line 745
    :cond_1
    return-void
.end method

.method private initH5CardViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 668
    new-instance v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;-><init>()V

    .line 670
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;
    sget v1, Lcom/youku/gamecenter/R$id;->game_activities_card_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->icon_txt:Landroid/widget/TextView;

    .line 672
    sget v1, Lcom/youku/gamecenter/R$id;->game_activities_card_title_txt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->title:Landroid/widget/TextView;

    .line 674
    sget v1, Lcom/youku/gamecenter/R$id;->game_activities_card_poster:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->poster:Landroid/widget/ImageView;

    .line 676
    sget v1, Lcom/youku/gamecenter/R$id;->game_activities_card_root:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->parentLayout:Landroid/view/View;

    .line 678
    return-object v0
.end method

.method private initMyGameViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 778
    new-instance v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;-><init>()V

    .line 780
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;
    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->initCardTopViewHolder(Landroid/view/View;Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;)V

    .line 782
    sget v1, Lcom/youku/gamecenter/R$id;->mygame_card_layout1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->item_layout_1:Landroid/view/View;

    .line 783
    sget v1, Lcom/youku/gamecenter/R$id;->mygame_card_icon1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->icon1:Landroid/widget/ImageView;

    .line 784
    sget v1, Lcom/youku/gamecenter/R$id;->mygame_card_title1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->title1:Landroid/widget/TextView;

    .line 785
    sget v1, Lcom/youku/gamecenter/R$id;->mygame_card_desc1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->desc1:Landroid/widget/TextView;

    .line 786
    sget v1, Lcom/youku/gamecenter/R$id;->game_card_action1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action1:Landroid/widget/TextView;

    .line 788
    sget v1, Lcom/youku/gamecenter/R$id;->mygame_card_line:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->splite_line:Landroid/view/View;

    .line 790
    sget v1, Lcom/youku/gamecenter/R$id;->mygame_card_layout2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->item_layout_2:Landroid/view/View;

    .line 791
    sget v1, Lcom/youku/gamecenter/R$id;->mygame_card_icon2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->icon2:Landroid/widget/ImageView;

    .line 792
    sget v1, Lcom/youku/gamecenter/R$id;->mygame_card_title2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->title2:Landroid/widget/TextView;

    .line 793
    sget v1, Lcom/youku/gamecenter/R$id;->mygame_card_desc2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->desc2:Landroid/widget/TextView;

    .line 794
    sget v1, Lcom/youku/gamecenter/R$id;->game_card_action2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action2:Landroid/widget/TextView;

    .line 795
    return-object v0
.end method

.method private initRecomViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 761
    new-instance v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;-><init>()V

    .line 763
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;
    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->initCardTopViewHolder(Landroid/view/View;Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;)V

    .line 765
    sget v1, Lcom/youku/gamecenter/R$id;->recom_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->layout:Landroid/view/View;

    .line 766
    sget v1, Lcom/youku/gamecenter/R$id;->recomgame_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->icon:Landroid/widget/ImageView;

    .line 767
    sget v1, Lcom/youku/gamecenter/R$id;->recomgame_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->title:Landroid/widget/TextView;

    .line 768
    sget v1, Lcom/youku/gamecenter/R$id;->recomgame_installed_count:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->install_count:Landroid/widget/TextView;

    .line 770
    sget v1, Lcom/youku/gamecenter/R$id;->recomgame_gamesize:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->size:Landroid/widget/TextView;

    .line 771
    sget v1, Lcom/youku/gamecenter/R$id;->recomgame_desc:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->desc:Landroid/widget/TextView;

    .line 772
    sget v1, Lcom/youku/gamecenter/R$id;->recomgame_action:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->action:Landroid/widget/TextView;

    .line 773
    return-object v0
.end method

.method private setH5CardDatas(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V
    .locals 8
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .param p2, "item"    # Lcom/youku/gamecenter/data/IGameHomeCardAble;

    .prologue
    const/4 v7, 0x5

    .line 160
    iget-object v3, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    move-object v1, p1

    .line 166
    check-cast v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;

    .local v1, "myHolder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;
    move-object v0, p2

    .line 167
    check-cast v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;

    .line 169
    .local v0, "info":Lcom/youku/gamecenter/data/HomePageBoxInfo;
    iget-object v3, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->card_image:Ljava/lang/String;

    iget-object v5, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 172
    const-string v2, "39"

    .line 174
    .local v2, "source":Ljava/lang/String;
    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getType()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 175
    const-string v2, "49"

    .line 178
    :cond_1
    iget-object v3, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->parentLayout:Landroid/view/View;

    new-instance v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameH5CardClickListener;

    iget-object v5, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v6, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->h5_url:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v6}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameH5CardClickListener;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getType()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 181
    iget-object v3, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->icon_txt:Landroid/widget/TextView;

    sget v4, Lcom/youku/gamecenter/R$string;->game_homepage_entry_subject:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v3, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->icon_txt:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v4}, Lcom/youku/gamecenter/GameBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/gamecenter/R$color;->game_h5_card_subject:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v3, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->icon_txt:Landroid/widget/TextView;

    sget v4, Lcom/youku/gamecenter/R$string;->game_homepage_entry_activities:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object v3, v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->icon_txt:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v4}, Lcom/youku/gamecenter/GameBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/gamecenter/R$color;->game_h5_card_activities:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setImageMarker(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "marker"    # Landroid/widget/TextView;
    .param p2, "markType"    # I

    .prologue
    const/4 v1, 0x0

    .line 400
    packed-switch p2, :pswitch_data_0

    .line 412
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    :goto_0
    return-void

    .line 402
    :pswitch_0
    sget v0, Lcom/youku/gamecenter/R$string;->game_homepage_entry_present:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 403
    sget v0, Lcom/youku/gamecenter/R$color;->game_home_page_banner_gift_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 404
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 407
    :pswitch_1
    sget v0, Lcom/youku/gamecenter/R$string;->game_homepage_entry_activities:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 408
    sget v0, Lcom/youku/gamecenter/R$color;->game_h5_card_activities:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 409
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setItemBanner(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V
    .locals 6
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .param p2, "item"    # Lcom/youku/gamecenter/data/IGameHomeCardAble;

    .prologue
    .line 366
    iget-object v3, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    move-object v2, p1

    .line 373
    check-cast v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$BannerViewHolder;

    .local v2, "myHolder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$BannerViewHolder;
    move-object v0, p2

    .line 375
    check-cast v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;

    .line 377
    .local v0, "data":Lcom/youku/gamecenter/data/HomePageBoxInfo;
    iget-object v3, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->getFirstGameInfo()Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    .line 382
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    if-eqz v1, :cond_0

    .line 386
    iget-object v3, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$BannerViewHolder;->marker:Landroid/widget/TextView;

    iget v4, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->operation_type:I

    invoke-direct {p0, v3, v4}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setImageMarker(Landroid/widget/TextView;I)V

    .line 388
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->card_image:Ljava/lang/String;

    iget-object v5, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$BannerViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 390
    iget-object v3, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$BannerViewHolder;->image:Landroid/widget/ImageView;

    new-instance v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;

    iget-object v5, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {v4, v5, v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameBannerClickListener;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/HomePageBoxInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setItemCardPoster(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V
    .locals 11
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .param p2, "item"    # Lcom/youku/gamecenter/data/IGameHomeCardAble;

    .prologue
    const/4 v9, 0x0

    .line 192
    iget-object v7, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setItemCardPosterPartly(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V

    .line 235
    :cond_0
    return-void

    .line 197
    :cond_1
    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    move-object v5, p1

    .line 199
    check-cast v5, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;

    .local v5, "myHolder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;
    move-object v0, p2

    .line 201
    check-cast v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;

    .line 203
    .local v0, "data":Lcom/youku/gamecenter/data/HomePageBoxInfo;
    iget-object v7, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    iget-object v7, v5, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v7, v5, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->posterContainer:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v7, v5, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->card_top_layout:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 211
    new-instance v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;

    iget-object v7, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v8, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->card_image:Ljava/lang/String;

    iget-object v9, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->id:Ljava/lang/String;

    iget-object v10, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v4, "listener":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;
    iget-object v7, v5, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v7

    iget-object v8, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->card_image:Ljava/lang/String;

    iget-object v9, v5, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 218
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->getShowItems()Ljava/util/List;

    move-result-object v2

    .line 220
    .local v2, "games":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    iget-object v7, v5, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->layout_2:Landroid/view/View;

    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->isShowRow2()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getVisibility(Z)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 222
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 224
    invoke-direct {p0, v3, v5}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getItemByPosition(ILcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    move-result-object v6

    .line 226
    .local v6, "viewItem":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;
    if-nez v6, :cond_2

    .line 222
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->getAllItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 232
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    invoke-virtual {p0, v1, v6}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setCardGameItem(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;)V

    goto :goto_1
.end method

.method private setItemCardPosterPartly(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V
    .locals 7
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .param p2, "item"    # Lcom/youku/gamecenter/data/IGameHomeCardAble;

    .prologue
    .line 133
    move-object v4, p1

    check-cast v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;

    .local v4, "myHolder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;
    move-object v0, p2

    .line 135
    check-cast v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;

    .line 137
    .local v0, "data":Lcom/youku/gamecenter/data/HomePageBoxInfo;
    iget-object v6, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 156
    :cond_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->getShowItems()Ljava/util/List;

    move-result-object v2

    .line 143
    .local v2, "games":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 145
    invoke-direct {p0, v3, v4}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getItemByPosition(ILcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    move-result-object v5

    .line 147
    .local v5, "viewItem":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;
    if-nez v5, :cond_2

    .line 143
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->getAllItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 153
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    invoke-virtual {p0, v1, v5}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setCardGameItemPartly(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;)V

    goto :goto_1
.end method

.method private setItemCardTitle(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V
    .locals 12
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .param p2, "item"    # Lcom/youku/gamecenter/data/IGameHomeCardAble;

    .prologue
    const/16 v10, 0x8

    .line 268
    iget-object v8, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setItemCardTitlePartly(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V

    .line 315
    :cond_0
    return-void

    .line 273
    :cond_1
    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    move-object v6, p1

    .line 275
    check-cast v6, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;

    .local v6, "myHolder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;
    move-object v0, p2

    .line 277
    check-cast v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;

    .line 279
    .local v0, "data":Lcom/youku/gamecenter/data/HomePageBoxInfo;
    iget-object v8, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->hasMore()Z

    move-result v3

    .line 284
    .local v3, "hasMore":Z
    iget-object v8, v6, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v8, v6, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->posterContainer:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v8, v6, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->card_top_layout:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v8, v6, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->card_more_layout:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getVisibility(Z)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v8, v6, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->card_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->getCardTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    if-eqz v3, :cond_2

    .line 291
    new-instance v5, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;

    iget-object v8, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->id:Ljava/lang/String;

    iget-object v11, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .local v5, "listener":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;
    iget-object v8, v6, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->card_more_layout:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v8, v6, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->card_title:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .end local v5    # "listener":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;
    :cond_2
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->getShowItems()Ljava/util/List;

    move-result-object v2

    .line 299
    .local v2, "games":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    iget-object v8, v6, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;->layout_2:Landroid/view/View;

    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->isShowRow2()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getVisibility(Z)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 301
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 303
    invoke-direct {p0, v4, v6}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getItemByPosition(ILcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    move-result-object v7

    .line 305
    .local v7, "viewItem":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;
    if-nez v7, :cond_3

    .line 301
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
    :cond_3
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->getAllItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 311
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    invoke-virtual {p0, v1, v7}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setCardGameItem(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;)V

    goto :goto_1
.end method

.method private setItemCardTitlePartly(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V
    .locals 7
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .param p2, "item"    # Lcom/youku/gamecenter/data/IGameHomeCardAble;

    .prologue
    .line 240
    move-object v4, p1

    check-cast v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;

    .local v4, "myHolder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;
    move-object v0, p2

    .line 242
    check-cast v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;

    .line 244
    .local v0, "data":Lcom/youku/gamecenter/data/HomePageBoxInfo;
    iget-object v6, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 264
    :cond_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->getShowItems()Ljava/util/List;

    move-result-object v2

    .line 250
    .local v2, "games":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 252
    invoke-direct {p0, v3, v4}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getItemByPosition(ILcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardViewHolder;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    move-result-object v5

    .line 254
    .local v5, "viewItem":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;
    if-nez v5, :cond_2

    .line 250
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->getAllItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 260
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    invoke-virtual {p0, v1, v5}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setCardGameItemPartly(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;)V

    goto :goto_1
.end method

.method private setItemMyGame(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V
    .locals 14
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .param p2, "item"    # Lcom/youku/gamecenter/data/IGameHomeCardAble;

    .prologue
    .line 539
    iget-object v9, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 540
    invoke-direct/range {p0 .. p2}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setItemMyGamePartly(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    move-object v4, p1

    .line 546
    check-cast v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;

    .local v4, "myHolder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;
    move-object/from16 v0, p2

    .line 548
    check-cast v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;

    .line 550
    .local v0, "data":Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;
    iget-object v9, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    if-eqz v9, :cond_0

    .line 554
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u6b3e\u6e38\u620f\u5f85\u5b89\u88c5"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 555
    .local v8, "title_name":Ljava/lang/String;
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->card_title:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->hasMore()Z

    move-result v7

    .line 558
    .local v7, "showMore":Z
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->card_more_layout:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getVisibility(Z)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 560
    if-eqz v7, :cond_2

    .line 561
    new-instance v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameMoreClickListener;

    iget-object v9, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {v3, v9}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameMoreClickListener;-><init>(Landroid/content/Context;)V

    .line 563
    .local v3, "moreListener":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameMoreClickListener;
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->card_more_layout:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->card_title:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    .end local v3    # "moreListener":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameMoreClickListener;
    :cond_2
    iget-object v9, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    const/4 v5, 0x1

    .line 569
    .local v5, "showItem1":Z
    :goto_1
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->item_layout_1:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getVisibility(Z)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 571
    if-eqz v5, :cond_3

    .line 573
    iget-object v9, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 575
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v9

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->icon1:Landroid/widget/ImageView;

    invoke-virtual {v9, v10, v11}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 577
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->title1:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->desc1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getMyGamePrompt(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    new-instance v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;

    iget-object v9, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    const-string v10, "34"

    invoke-direct {v2, v9, v1, v10}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    .line 582
    .local v2, "listener":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->item_layout_1:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->title1:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->desc1:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->icon1:Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action1:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v11, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v11, v11, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v10, v11}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action1:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v10, v10, Lcom/youku/gamecenter/data/GameInfoStatus;->homePageTitleId:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 588
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action1:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v10, v10, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 590
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action1:Landroid/widget/TextView;

    new-instance v10, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;

    iget-object v11, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    const-string v12, "7"

    iget-object v13, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->icon1:Landroid/widget/ImageView;

    invoke-direct {v10, v11, v1, v12, v13}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    .end local v1    # "game":Lcom/youku/gamecenter/data/GameInfo;
    .end local v2    # "listener":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;
    :cond_3
    iget-object v9, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    const/4 v6, 0x1

    .line 596
    .local v6, "showItem2":Z
    :goto_2
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->splite_line:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getVisibility(Z)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 598
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->item_layout_2:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getVisibility(Z)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 600
    if-eqz v6, :cond_0

    .line 602
    iget-object v9, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 604
    .restart local v1    # "game":Lcom/youku/gamecenter/data/GameInfo;
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v9

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->icon2:Landroid/widget/ImageView;

    invoke-virtual {v9, v10, v11}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 606
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->title2:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->desc2:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getMyGamePrompt(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    new-instance v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;

    iget-object v9, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    const-string v10, "7"

    invoke-direct {v2, v9, v1, v10}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    .line 611
    .restart local v2    # "listener":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->item_layout_2:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->title2:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->desc2:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->icon2:Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action2:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v10, v10, Lcom/youku/gamecenter/data/GameInfoStatus;->homePageTitleId:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 617
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action2:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v11, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v11, v11, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v10, v11}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 618
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action2:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v10, v10, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 619
    iget-object v9, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action2:Landroid/widget/TextView;

    new-instance v10, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;

    iget-object v11, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    const-string v12, "7"

    iget-object v13, v4, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->icon1:Landroid/widget/ImageView;

    invoke-direct {v10, v11, v1, v12, v13}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 567
    .end local v1    # "game":Lcom/youku/gamecenter/data/GameInfo;
    .end local v2    # "listener":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;
    .end local v5    # "showItem1":Z
    .end local v6    # "showItem2":Z
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 594
    .restart local v5    # "showItem1":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2
.end method

.method private setItemMyGamePartly(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V
    .locals 11
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .param p2, "item"    # Lcom/youku/gamecenter/data/IGameHomeCardAble;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 493
    move-object v2, p1

    check-cast v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;

    .local v2, "myHolder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;
    move-object v0, p2

    .line 495
    check-cast v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;

    .line 497
    .local v0, "data":Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;
    iget-object v8, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    if-nez v8, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u6b3e\u6e38\u620f\u5f85\u5b89\u88c5"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 502
    .local v5, "title_name":Ljava/lang/String;
    iget-object v8, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->card_title:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    .line 506
    iget-object v8, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    move v3, v6

    .line 508
    .local v3, "showItem1":Z
    :goto_1
    iget-object v8, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->item_layout_1:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getVisibility(Z)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 510
    if-eqz v3, :cond_2

    .line 512
    iget-object v8, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 513
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v8, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action1:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v10, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v10, v10, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v9, v10}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 514
    iget-object v8, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action1:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v9, v9, Lcom/youku/gamecenter/data/GameInfoStatus;->homePageTitleId:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 515
    iget-object v8, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action1:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v9, v9, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 516
    iget-object v8, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->desc1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getMyGamePrompt(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    .end local v1    # "game":Lcom/youku/gamecenter/data/GameInfo;
    :cond_2
    iget-object v8, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v6, :cond_4

    move v4, v6

    .line 522
    .local v4, "showItem2":Z
    :goto_2
    iget-object v7, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->splite_line:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getVisibility(Z)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v7, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->item_layout_2:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getVisibility(Z)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 526
    if-eqz v4, :cond_0

    .line 528
    iget-object v7, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 529
    .restart local v1    # "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v6, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action2:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v8, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v8, v8, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v7, v8}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    iget-object v6, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action2:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v7, v7, Lcom/youku/gamecenter/data/GameInfoStatus;->homePageTitleId:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 531
    iget-object v6, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->action2:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v7, v7, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 532
    iget-object v6, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameViewHolder;->desc2:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getMyGamePrompt(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v1    # "game":Lcom/youku/gamecenter/data/GameInfo;
    .end local v3    # "showItem1":Z
    .end local v4    # "showItem2":Z
    :cond_3
    move v3, v7

    .line 506
    goto/16 :goto_1

    .restart local v3    # "showItem1":Z
    :cond_4
    move v4, v7

    .line 520
    goto :goto_2
.end method

.method private setItemRecomGame(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V
    .locals 9
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .param p2, "item"    # Lcom/youku/gamecenter/data/IGameHomeCardAble;

    .prologue
    .line 441
    iget-object v4, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setItemRecomGamePartly(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-interface {p2}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getCardTag()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    move-object v3, p1

    .line 448
    check-cast v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;

    .local v3, "myHolder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;
    move-object v0, p2

    .line 450
    check-cast v0, Lcom/youku/gamecenter/data/HomePageRecomInfo;

    .line 452
    .local v0, "data":Lcom/youku/gamecenter/data/HomePageRecomInfo;
    iget-object v4, v0, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 456
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->card_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageRecomInfo;->getCardTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->card_more_layout:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 459
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageRecomInfo;->getFirstGameInfo()Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    .line 460
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    if-eqz v1, :cond_0

    .line 464
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v4

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v6}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 467
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->install_count:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/youku/gamecenter/data/GameInfo;->total_downloads:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u4eba\u5b89\u88c5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->size:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageRecomInfo;->getRec_word()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    new-instance v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    const-string v5, "21"

    invoke-direct {v2, v4, v1, v5}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    .line 477
    .local v2, "listener":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->layout:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->install_count:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->action:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v6, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v6, v6, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v5, v6}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 484
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->action:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v5, v5, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 485
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->action:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v5, v5, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 486
    iget-object v4, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->action:Landroid/widget/TextView;

    new-instance v5, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;

    iget-object v6, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    const-string v7, "21"

    iget-object v8, v3, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private setItemRecomGamePartly(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V
    .locals 6
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .param p2, "item"    # Lcom/youku/gamecenter/data/IGameHomeCardAble;

    .prologue
    .line 420
    move-object v2, p1

    check-cast v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;

    .local v2, "myHolder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;
    move-object v0, p2

    .line 422
    check-cast v0, Lcom/youku/gamecenter/data/HomePageRecomInfo;

    .line 424
    .local v0, "data":Lcom/youku/gamecenter/data/HomePageRecomInfo;
    iget-object v3, v0, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    if-nez v3, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/HomePageRecomInfo;->getFirstGameInfo()Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    .line 429
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    if-eqz v1, :cond_0

    .line 433
    iget-object v3, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->action:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v5, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v5, v5, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v4, v5}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    iget-object v3, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->action:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v4, v4, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 435
    iget-object v3, v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$EditRecomViewHolder;->action:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v4, v4, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setViewHolderDatas(ILcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    .param p3, "item"    # Lcom/youku/gamecenter/data/IGameHomeCardAble;

    .prologue
    .line 98
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 99
    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setItemBanner(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 104
    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setItemMyGame(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V

    goto :goto_0

    .line 108
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 109
    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setItemRecomGame(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V

    goto :goto_0

    .line 113
    :cond_3
    if-nez p1, :cond_4

    .line 114
    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setItemCardTitle(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V

    goto :goto_0

    .line 118
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 119
    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setItemCardPoster(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V

    goto :goto_0

    .line 123
    :cond_5
    const/4 v0, 0x6

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 124
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setH5CardDatas(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/youku/gamecenter/data/IGameHomeCardAble;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 812
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/IGameHomeCardAble;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getItem(I)Lcom/youku/gamecenter/data/IGameHomeCardAble;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 817
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/IGameHomeCardAble;

    invoke-interface {v0}, Lcom/youku/gamecenter/data/IGameHomeCardAble;->getType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getItemViewType(I)I

    move-result v1

    .line 76
    .local v1, "type":I
    if-nez p2, :cond_0

    .line 78
    invoke-direct {p0, p3, v1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->createViewByType(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 80
    invoke-direct {p0, p2, v1, p1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->createViewHolderByType(Landroid/view/View;II)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;

    move-result-object v0

    .line 82
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    :goto_0
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->getItem(I)Lcom/youku/gamecenter/data/IGameHomeCardAble;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setViewHolderDatas(ILcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;Lcom/youku/gamecenter/data/IGameHomeCardAble;)V

    .line 92
    return-object p2

    .line 86
    .end local v0    # "holder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 822
    const/4 v0, 0x7

    return v0
.end method

.method public getVisibility(Z)I
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 626
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public isInteger(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 859
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCardGameItem(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;)V
    .locals 10
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "viewItem"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    .prologue
    const/4 v9, 0x0

    .line 345
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 347
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->type_size:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->short_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->action:Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->downloadBtnTitleColorId:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->homePageTitleId:I

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v3, v3, Lcom/youku/gamecenter/data/GameInfoStatus;->downloadBtnProgressVisible:I

    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v4, v4, Lcom/youku/gamecenter/data/GameInfoStatus;->downloadBtnBgColorId:I

    iget-object v5, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v5, v5, Lcom/youku/gamecenter/data/GameInfoStatus;->downloadBtnProgressColorId:I

    iget v6, p1, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual/range {v0 .. v6}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->setDownloadBtnStatus(IIIIII)V

    .line 351
    new-instance v7, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;

    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    const-string v1, "34"

    invoke-direct {v7, v0, p1, v1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    .line 353
    .local v7, "listener":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameDetailClickListener;
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->type_size:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->recommend_type:Ljava/lang/String;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    .line 358
    .local v8, "showPresent":Z
    :goto_0
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->present:Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    :goto_1
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->action:Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    new-instance v1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    const-string v3, "34"

    iget-object v4, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->icon:Landroid/widget/ImageView;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameActionClickListener;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    return-void

    .end local v8    # "showPresent":Z
    :cond_0
    move v8, v9

    .line 357
    goto :goto_0

    .line 358
    .restart local v8    # "showPresent":Z
    :cond_1
    const/16 v9, 0x8

    goto :goto_1
.end method

.method public setCardGameItemPartly(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;)V
    .locals 7
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "viewItem"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;

    .prologue
    .line 341
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;->action:Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->downloadBtnTitleColorId:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->homePageTitleId:I

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v3, v3, Lcom/youku/gamecenter/data/GameInfoStatus;->downloadBtnProgressVisible:I

    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v4, v4, Lcom/youku/gamecenter/data/GameInfoStatus;->downloadBtnBgColorId:I

    iget-object v5, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v5, v5, Lcom/youku/gamecenter/data/GameInfoStatus;->downloadBtnProgressColorId:I

    iget v6, p1, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual/range {v0 .. v6}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->setDownloadBtnStatus(IIIIII)V

    .line 342
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/IGameHomeCardAble;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/IGameHomeCardAble;>;"
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->mList:Ljava/util/List;

    .line 63
    return-void
.end method
