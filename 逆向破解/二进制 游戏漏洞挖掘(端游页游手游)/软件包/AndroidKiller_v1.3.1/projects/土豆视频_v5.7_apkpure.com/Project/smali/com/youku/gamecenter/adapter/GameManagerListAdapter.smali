.class public Lcom/youku/gamecenter/adapter/GameManagerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameManagerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/adapter/GameManagerListAdapter$DialogClickListener;,
        Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private dialog:Lcom/youku/gamecenter/widgets/SimplePromptDialog;

.field private mActivity:Lcom/youku/gamecenter/GameManagerActivity;

.field private mGameManagerFragment:Lcom/youku/gamecenter/GameManagerFragment;

.field private mGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPromptHelper:Lcom/youku/gamecenter/outer/InstallablePromptHelper;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/GameManagerFragment;Z)V
    .locals 1
    .param p1, "fragment"    # Lcom/youku/gamecenter/GameManagerFragment;
    .param p2, "isTablet"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->dialog:Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    .line 44
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mGameManagerFragment:Lcom/youku/gamecenter/GameManagerFragment;

    .line 45
    invoke-virtual {p1}, Lcom/youku/gamecenter/GameManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/GameManagerActivity;

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    .line 46
    invoke-virtual {p1}, Lcom/youku/gamecenter/GameManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mPromptHelper:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/GameManagerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mGameManagerFragment:Lcom/youku/gamecenter/GameManagerFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameManagerListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->isTreateAsOpenState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/GameManagerActivity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameManagerListAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->getStrById(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->dialog:Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;Lcom/youku/gamecenter/widgets/SimplePromptDialog;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameManagerListAdapter;
    .param p1, "x1"    # Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->dialog:Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    return-object p1
.end method

.method private getStrById(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    if-nez v0, :cond_0

    .line 318
    const-string v0, ""

    .line 320
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getVersionName(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 189
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->isTreateAsOpenState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_1

    .line 190
    :cond_0
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->current_version_name:Ljava/lang/String;

    .line 196
    :goto_0
    return-object v0

    .line 192
    :cond_1
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_2

    .line 193
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->version:Ljava/lang/String;

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->current_version_name:Ljava/lang/String;

    goto :goto_0
.end method

.method private inflateViewByDevice()Landroid/view/View;
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/gamecenter/R$layout;->listview_gamelist_manager_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 211
    new-instance v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;-><init>()V

    .line 212
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 213
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 214
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_size:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 215
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_version_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->versionName:Landroid/widget/TextView;

    .line 217
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_des:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    .line 219
    sget v1, Lcom/youku/gamecenter/R$id;->count_versioname:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size_versionNameLayout:Landroid/widget/RelativeLayout;

    .line 221
    sget v1, Lcom/youku/gamecenter/R$id;->progress_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    .line 223
    sget v1, Lcom/youku/gamecenter/R$id;->rootview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/widgets/ProgressView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    .line 224
    sget v1, Lcom/youku/gamecenter/R$id;->progress_rate:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->progressRate:Landroid/widget/TextView;

    .line 226
    sget v1, Lcom/youku/gamecenter/R$id;->action_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    .line 227
    sget v1, Lcom/youku/gamecenter/R$id;->delete_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->delImg:Landroid/view/View;

    .line 228
    sget v1, Lcom/youku/gamecenter/R$id;->list_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->listItem:Landroid/view/View;

    .line 230
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_size1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    .line 231
    sget v1, Lcom/youku/gamecenter/R$id;->download_velocity:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    .line 232
    return-object v0
.end method

.method private isHighSdkVersion()Z
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->isHighSdkVersion()Z

    move-result v0

    return v0
.end method

.method private isTreateAsOpenState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mGameManagerFragment:Lcom/youku/gamecenter/GameManagerFragment;

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mGameManagerFragment:Lcom/youku/gamecenter/GameManagerFragment;

    iget-object v1, v1, Lcom/youku/gamecenter/GameManagerFragment;->mType:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    sget-object v2, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_INSTALLED:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    if-ne v1, v2, :cond_0

    .line 206
    invoke-static {p1}, Lcom/youku/gamecenter/GameCenterModel;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isUpdatePartly(Ljava/lang/String;Landroid/view/View;)Z
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 237
    sget v2, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v1

    .line 241
    :cond_1
    sget v2, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, "storedPackName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->isHighSdkVersion()Z

    move-result v1

    goto :goto_0
.end method

.method private onActionButtonClickListener(Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 283
    new-instance v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$2;-><init>(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;Lcom/youku/gamecenter/data/GameInfo;)V

    return-object v0
.end method

.method private onDeleteClickListner(Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 298
    new-instance v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$3;-><init>(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;Lcom/youku/gamecenter/data/GameInfo;)V

    return-object v0
.end method

.method private onItemClickListener(ILcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "position"    # I
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 272
    new-instance v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$1;-><init>(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;Lcom/youku/gamecenter/data/GameInfo;)V

    return-object v0
.end method

.method private setViewHolderDatas(ILcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;Z)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p4, "updatePartly"    # Z

    .prologue
    .line 100
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size_versionNameLayout:Landroid/widget/RelativeLayout;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v7, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v8, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v7, v8, :cond_0

    iget-object v7, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v8, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v7, v8, :cond_0

    iget-object v7, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v8, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v7, v8, :cond_5

    .line 105
    :cond_0
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 106
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v8, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v7, v8}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 108
    const-string v7, "0B"

    iget-object v8, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v6, 0x8

    .line 109
    .local v6, "visibility":I
    :goto_0
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p3, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    invoke-static {v10, v11}, Lcom/youku/gamecenter/util/CommonUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    sget v8, Lcom/youku/gamecenter/R$string;->game_download_pause:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    sget v9, Lcom/youku/gamecenter/R$color;->game_gamelist_item_size_text_color:I

    invoke-static {v8, v9}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    sget v9, Lcom/youku/gamecenter/R$color;->game_gamelist_item_size_text_color:I

    invoke-static {v8, v9}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v7, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v8, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v7, v8, :cond_1

    .line 115
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    sget v8, Lcom/youku/gamecenter/R$string;->game_download_pending:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 142
    .end local v6    # "visibility":I
    :cond_1
    :goto_1
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->listItem:Landroid/view/View;

    invoke-direct {p0, p1, p3}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->onItemClickListener(ILcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->onActionButtonClickListener(Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->delImg:Landroid/view/View;

    invoke-direct {p0, p3}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->onDeleteClickListner(Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, p3, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v7, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    sget v8, Lcom/youku/gamecenter/R$string;->game_size:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/youku/gamecenter/GameManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "gameSize":Ljava/lang/String;
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v7, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    sget v8, Lcom/youku/gamecenter/R$string;->game_version:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-direct {p0, p3}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->getVersionName(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/youku/gamecenter/GameManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "version":Ljava/lang/String;
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->versionName:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    iget-object v8, p3, Lcom/youku/gamecenter/data/GameInfo;->short_desc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v7, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v8, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v7, v8, :cond_2

    .line 155
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->versionName:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v7, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mPromptHelper:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    iget-object v8, p3, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    iget-object v9, p3, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->getPromptDatas(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "desc":Ljava/lang/String;
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    .end local v0    # "desc":Ljava/lang/String;
    :cond_2
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v8, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v8, v8, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    iget-object v9, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v9, v9, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v8, v9}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v8, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v8, v8, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 166
    iget-object v7, p3, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->isTreateAsOpenState(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 167
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size_versionNameLayout:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 169
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v7, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    sget v8, Lcom/youku/gamecenter/R$string;->game_version:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-direct {p0, p3}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->getVersionName(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/youku/gamecenter/GameManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "version2":Ljava/lang/String;
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->versionName:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->versionName:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    sget v2, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_box_button_text_color_at_white_background:I

    .line 177
    .local v2, "strColorId":I
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    sget v8, Lcom/youku/gamecenter/R$string;->str_open:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    invoke-static {v8, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    sget v8, Lcom/youku/gamecenter/R$drawable;->game_card_action_bg:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 182
    .end local v2    # "strColorId":I
    .end local v4    # "version2":Ljava/lang/String;
    :cond_3
    if-eqz p4, :cond_a

    .line 186
    :goto_2
    return-void

    .line 108
    .end local v1    # "gameSize":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 117
    :cond_5
    iget-object v7, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v8, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v7, v8, :cond_7

    .line 118
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 120
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v8, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v7, v8}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 121
    const-string v7, "0B"

    iget-object v8, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v6, 0x8

    .line 122
    .restart local v6    # "visibility":I
    :goto_3
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p3, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    invoke-static {v10, v11}, Lcom/youku/gamecenter/util/CommonUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget v8, p3, Lcom/youku/gamecenter/data/GameInfo;->downloadVelocity:I

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    invoke-static {v8}, Lcom/youku/gamecenter/util/CommonUtils;->formatDownloadVelocity(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    sget v9, Lcom/youku/gamecenter/R$color;->game_gamelist_item_downloading_color:I

    invoke-static {v8, v9}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    sget v9, Lcom/youku/gamecenter/R$color;->game_gamelist_item_downloading_color:I

    invoke-static {v8, v9}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 121
    .end local v6    # "visibility":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 127
    :cond_7
    iget-object v7, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v8, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v7, v8, :cond_8

    iget-object v7, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v8, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v7, v8, :cond_9

    .line 129
    :cond_8
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size_versionNameLayout:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    invoke-direct {p0, p3}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->getVersionName(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "versionName":Ljava/lang/String;
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->versionName:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->versionName:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 136
    .end local v5    # "versionName":Ljava/lang/String;
    :cond_9
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 137
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size_versionNameLayout:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 138
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v7, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->versionName:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 185
    .restart local v1    # "gameSize":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v7

    invoke-virtual {p3}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p2, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mGames:Ljava/util/List;

    if-nez v3, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v2

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mGames:Ljava/util/List;

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

    .line 263
    .local v0, "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mGames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mGames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mGames:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 76
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    if-nez p2, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->inflateViewByDevice()Landroid/view/View;

    move-result-object p2

    .line 78
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;

    move-result-object v0

    .line 79
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    const/4 v2, 0x0

    .line 87
    .local v2, "updatePartly":Z
    :goto_0
    sget v3, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    iget-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 89
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->setViewHolderDatas(ILcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;Z)V

    .line 91
    return-object p2

    .line 82
    .end local v0    # "holder":Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;
    .end local v2    # "updatePartly":Z
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;

    .line 84
    .restart local v0    # "holder":Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->isUpdatePartly(Ljava/lang/String;Landroid/view/View;)Z

    move-result v2

    .restart local v2    # "updatePartly":Z
    goto :goto_0
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
    .line 51
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->mGames:Ljava/util/List;

    .line 52
    return-void
.end method
