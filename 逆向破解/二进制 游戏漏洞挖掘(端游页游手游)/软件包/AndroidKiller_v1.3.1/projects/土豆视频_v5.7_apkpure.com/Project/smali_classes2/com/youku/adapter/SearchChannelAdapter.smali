.class public Lcom/youku/adapter/SearchChannelAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private page:I

.field searchManager:Lcom/tudou/ui/fragment/SearchManager;

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SokuPodcast$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter;->users:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/ImageLoader;Landroid/app/Activity;)V
    .locals 2
    .param p2, "imagework"    # Lcom/nostra13/universalimageloader/core/ImageLoader;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SokuPodcast$User;",
            ">;",
            "Lcom/nostra13/universalimageloader/core/ImageLoader;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SokuPodcast$User;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter;->users:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/youku/adapter/SearchChannelAdapter;->setUsers(Ljava/util/ArrayList;IZ)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/youku/adapter/SearchChannelAdapter;->setImagework(Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 52
    invoke-virtual {p0, p3}, Lcom/youku/adapter/SearchChannelAdapter;->setActivity(Landroid/app/Activity;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/youku/adapter/SearchChannelAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/youku/adapter/SearchChannelAdapter;->cancelAttention(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/adapter/SearchChannelAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/youku/adapter/SearchChannelAdapter;->addAttention(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/adapter/SearchChannelAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private addAttention(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 259
    iget-object v1, p0, Lcom/youku/adapter/SearchChannelAdapter;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {p0}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SokuPodcast$User;

    new-instance v2, Lcom/youku/adapter/SearchChannelAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/youku/adapter/SearchChannelAdapter$3;-><init>(Lcom/youku/adapter/SearchChannelAdapter;I)V

    invoke-virtual {v1, v0, v2}, Lcom/tudou/ui/fragment/SearchManager;->addPodcastAttention(Lcom/youku/vo/SokuPodcast$User;Lcom/tudou/service/attention/IAttention$CallBack;)V

    .line 293
    return-void
.end method

.method private attentionLogin(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 330
    const-string v1, "TAG"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const/16 v1, 0x7d0

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;III)V

    .line 333
    return-void
.end method

.method private cancelAttention(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 296
    iget-object v1, p0, Lcom/youku/adapter/SearchChannelAdapter;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SokuPodcast$User;

    iget v0, v0, Lcom/youku/vo/SokuPodcast$User;->userId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-instance v3, Lcom/youku/adapter/SearchChannelAdapter$4;

    invoke-direct {v3, p0, p1}, Lcom/youku/adapter/SearchChannelAdapter$4;-><init>(Lcom/youku/adapter/SearchChannelAdapter;I)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/tudou/ui/fragment/SearchManager;->cancelAttention(Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    .line 325
    return-void
.end method

.method private initViewHolder(Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewholder"    # Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 202
    const v0, 0x7f0c0229

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imageView:Landroid/widget/ImageView;

    .line 203
    const v0, 0x7f0c07dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->channelV:Landroid/widget/ImageView;

    .line 204
    const v0, 0x7f0c022d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->username:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f0c07e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imgSubed:Landroid/widget/ImageView;

    .line 206
    const v0, 0x7f0c07df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->subedFrame:Landroid/widget/FrameLayout;

    .line 207
    const v0, 0x7f0c07e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->aboutMyself:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f0c07e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->uploadCount:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f0c058d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->subedProgressBar:Landroid/widget/ProgressBar;

    .line 211
    return-void
.end method

.method private setUserImg(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/youku/adapter/SearchChannelAdapter;->getImagework()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    new-instance v2, Lcom/youku/adapter/SearchChannelAdapter$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/youku/adapter/SearchChannelAdapter$5;-><init>(Lcom/youku/adapter/SearchChannelAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 396
    return-void
.end method

.method private setView(ILandroid/view/View;Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "holder"    # Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;

    .prologue
    const v3, 0x7f020186

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SokuPodcast$User;

    .line 91
    .local v0, "user":Lcom/youku/vo/SokuPodcast$User;
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->username:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/SokuPodcast$User;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-boolean v1, v0, Lcom/youku/vo/SokuPodcast$User;->isVuser:Z

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->channelV:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    :goto_0
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 105
    iget-object v1, v0, Lcom/youku/vo/SokuPodcast$User;->userpicurl:Ljava/lang/String;

    iget-object v2, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/youku/adapter/SearchChannelAdapter;->setUserImg(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 106
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->uploadCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/youku/vo/SokuPodcast$User;->uploadCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\u89c6\u9891 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/SokuPodcast$User;->subedNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba\u8ba2\u9605"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, v0, Lcom/youku/vo/SokuPodcast$User;->lut:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->aboutMyself:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/SokuPodcast$User;->lut:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_1
    iget-boolean v1, v0, Lcom/youku/vo/SokuPodcast$User;->isSelf:Z

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->subedFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 179
    :goto_2
    new-instance v1, Lcom/youku/adapter/SearchChannelAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/youku/adapter/SearchChannelAdapter$2;-><init>(Lcom/youku/adapter/SearchChannelAdapter;Lcom/youku/vo/SokuPodcast$User;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void

    .line 100
    :cond_0
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->channelV:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, v0, Lcom/youku/vo/SokuPodcast$User;->aboutMyself:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->aboutMyself:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/SokuPodcast$User;->aboutMyself:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 113
    :cond_2
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->aboutMyself:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/SokuPodcast$User;->lut:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 117
    :cond_3
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->subedFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 118
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imgSubed:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->subedProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    iget v1, v0, Lcom/youku/vo/SokuPodcast$User;->ATTENTION_STATE:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 129
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imgSubed:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->subedProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imgSubed:Landroid/widget/ImageView;

    const v2, 0x7f020851

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 142
    :goto_3
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->subedFrame:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imgSubed:Landroid/widget/ImageView;

    new-instance v2, Lcom/youku/adapter/SearchChannelAdapter$1;

    invoke-direct {v2, p0, v0, p3, p1}, Lcom/youku/adapter/SearchChannelAdapter$1;-><init>(Lcom/youku/adapter/SearchChannelAdapter;Lcom/youku/vo/SokuPodcast$User;Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 133
    :cond_4
    iget v1, v0, Lcom/youku/vo/SokuPodcast$User;->ATTENTION_STATE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 134
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imgSubed:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->subedProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 137
    :cond_5
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imgSubed:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->subedProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget-object v1, p3, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imgSubed:Landroid/widget/ImageView;

    const v2, 0x7f020852

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getImagework()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getUsers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SokuPodcast$User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/youku/adapter/SearchChannelAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301b2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v0, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;

    invoke-direct {v0, p0}, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;-><init>(Lcom/youku/adapter/SearchChannelAdapter;)V

    .line 79
    .local v0, "viewholder":Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/youku/adapter/SearchChannelAdapter;->initViewHolder(Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;Landroid/view/View;)V

    .line 80
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/youku/adapter/SearchChannelAdapter;->setView(ILandroid/view/View;Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;)V

    .line 85
    return-object p2

    .line 82
    .end local v0    # "viewholder":Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;

    .restart local v0    # "viewholder":Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;
    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelAdapter;->activity:Landroid/app/Activity;

    .line 227
    return-void
.end method

.method public setImagework(Lcom/nostra13/universalimageloader/core/ImageLoader;)V
    .locals 0
    .param p1, "imagework"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 219
    return-void
.end method

.method public setSManager(Lcom/tudou/ui/fragment/SearchManager;)V
    .locals 0
    .param p1, "searchManager"    # Lcom/tudou/ui/fragment/SearchManager;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelAdapter;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    .line 256
    return-void
.end method

.method public setUsers(Ljava/util/ArrayList;IZ)V
    .locals 1
    .param p2, "page"    # I
    .param p3, "onresume"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SokuPodcast$User;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SokuPodcast$User;>;"
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter;->users:Ljava/util/ArrayList;

    .line 239
    return-void
.end method
