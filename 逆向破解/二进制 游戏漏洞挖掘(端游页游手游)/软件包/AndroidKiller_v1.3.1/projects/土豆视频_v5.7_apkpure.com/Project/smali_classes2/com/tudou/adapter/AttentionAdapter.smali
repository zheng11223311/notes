.class public Lcom/tudou/adapter/AttentionAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttentionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Lcom/tudou/ui/activity/BaseActivity;

.field private handler:Landroid/os/Handler;

.field private imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private isedit:Z

.field private mFragment:Lcom/tudou/ui/fragment/AttentionFragment;

.field private mListSubs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Podcast$Users$Subs;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalNum:I

.field private podcast:Lcom/youku/vo/Podcast;


# direct methods
.method public constructor <init>(Lcom/tudou/ui/activity/BaseActivity;Landroid/os/Handler;Lcom/youku/vo/Podcast;Lcom/nostra13/universalimageloader/core/ImageLoader;)V
    .locals 1
    .param p1, "context"    # Lcom/tudou/ui/activity/BaseActivity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "podcast"    # Lcom/youku/vo/Podcast;
    .param p4, "imagework"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/adapter/AttentionAdapter;->isedit:Z

    .line 53
    iput-object p1, p0, Lcom/tudou/adapter/AttentionAdapter;->context:Lcom/tudou/ui/activity/BaseActivity;

    .line 54
    iput-object p2, p0, Lcom/tudou/adapter/AttentionAdapter;->handler:Landroid/os/Handler;

    .line 55
    iput-object p3, p0, Lcom/tudou/adapter/AttentionAdapter;->podcast:Lcom/youku/vo/Podcast;

    .line 56
    iput-object p4, p0, Lcom/tudou/adapter/AttentionAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->mListSubs:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/AttentionAdapter;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/AttentionAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->context:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/AttentionAdapter;)Lcom/tudou/ui/fragment/AttentionFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/AttentionAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->mFragment:Lcom/tudou/ui/fragment/AttentionFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/adapter/AttentionAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/AttentionAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private initViewHolder(Lcom/tudou/adapter/AttentionAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewholder"    # Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 409
    const v0, 0x7f0c0229

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 410
    const v0, 0x7f0c022a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->imageView_2:Landroid/widget/ImageView;

    .line 411
    const v0, 0x7f0c022d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->username:Landroid/widget/TextView;

    .line 412
    const v0, 0x7f0c07c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 413
    const v0, 0x7f0c022f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    .line 414
    const v0, 0x7f0c07c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->num:Landroid/widget/TextView;

    .line 415
    const v0, 0x7f0c07c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->num_bg:Landroid/widget/ImageView;

    .line 416
    const v0, 0x7f0c0ce0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->juji_img:Landroid/widget/ImageView;

    .line 417
    const v0, 0x7f0c022b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->vuserimg:Landroid/widget/ImageView;

    .line 418
    const v0, 0x7f0c058d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 419
    return-void
.end method

.method private setViewHolderData(Lcom/tudou/adapter/AttentionAdapter$ViewHolder;ILandroid/widget/ListView;)V
    .locals 9
    .param p1, "viewholder"    # Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "listView"    # Landroid/widget/ListView;

    .prologue
    const v4, 0x7f020614

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 153
    iget-object v3, p0, Lcom/tudou/adapter/AttentionAdapter;->podcast:Lcom/youku/vo/Podcast;

    iget-object v3, v3, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v3, v3, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Podcast$Users$Subs;

    .line 154
    .local v2, "user":Lcom/youku/vo/Podcast$Users$Subs;
    if-nez v2, :cond_0

    .line 406
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tudou/adapter/AttentionAdapter;->getItemViewType(I)I

    move-result v0

    .line 158
    .local v0, "type":I
    if-ne v0, v8, :cond_2

    .line 159
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v3, p0, Lcom/tudou/adapter/AttentionAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, v2, Lcom/youku/vo/Podcast$Users$Subs;->smallPic:Ljava/lang/String;

    iget-object v5, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 162
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->imageView_2:Landroid/widget/ImageView;

    const v4, 0x7f0205f0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->username:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/youku/vo/Podcast$Users$Subs;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_1
    iget v3, v2, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    iput v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->id:I

    .line 172
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    if-ne v0, v8, :cond_5

    .line 174
    iget-object v3, v2, Lcom/youku/vo/Podcast$Users$Subs;->updateTime_str:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/youku/vo/Podcast$Users$Subs;->updateTime_str:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 175
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/youku/vo/Podcast$Users$Subs;->updateTime_str:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u66f4\u65b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_2
    if-ne v0, v8, :cond_1

    .line 197
    iget-boolean v3, v2, Lcom/youku/vo/Podcast$Users$Subs;->isVuser:Z

    if-eqz v3, :cond_7

    .line 198
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->vuserimg:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :cond_1
    :goto_3
    iget-boolean v3, v2, Lcom/youku/vo/Podcast$Users$Subs;->isRunning:Z

    if-eqz v3, :cond_8

    .line 205
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 206
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :goto_4
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    new-instance v4, Lcom/tudou/adapter/AttentionAdapter$1;

    invoke-direct {v4, p0, v2, p1, p3}, Lcom/tudou/adapter/AttentionAdapter$1;-><init>(Lcom/tudou/adapter/AttentionAdapter;Lcom/youku/vo/Podcast$Users$Subs;Lcom/tudou/adapter/AttentionAdapter$ViewHolder;Landroid/widget/ListView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-boolean v3, p0, Lcom/tudou/adapter/AttentionAdapter;->isedit:Z

    if-eqz v3, :cond_b

    .line 382
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->num:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->num_bg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-boolean v3, v2, Lcom/youku/vo/Podcast$Users$Subs;->isdelete:Z

    if-eqz v3, :cond_a

    .line 386
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    const v4, 0x7f0207fe

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 165
    :cond_2
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v3, p0, Lcom/tudou/adapter/AttentionAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, v2, Lcom/youku/vo/Podcast$Users$Subs;->smallPic:Ljava/lang/String;

    iget-object v5, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 168
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->username:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/youku/vo/Podcast$Users$Subs;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 178
    :cond_3
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/youku/vo/Podcast$Users$Subs;->updateTime_str:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 181
    :cond_4
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 184
    :cond_5
    iget-object v3, v2, Lcom/youku/vo/Podcast$Users$Subs;->updateInfo:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/youku/vo/Podcast$Users$Subs;->updateInfo:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 185
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/youku/vo/Podcast$Users$Subs;->updateInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 187
    :cond_6
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 200
    :cond_7
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->vuserimg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 208
    :cond_8
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 209
    iget-boolean v3, v2, Lcom/youku/vo/Podcast$Users$Subs;->issubs:Z

    if-eqz v3, :cond_9

    .line 210
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    const v4, 0x7f020851

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    :goto_5
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 212
    :cond_9
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    const v4, 0x7f020852

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 388
    :cond_a
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    const v4, 0x7f0207ff

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 392
    :cond_b
    invoke-virtual {v2}, Lcom/youku/vo/Podcast$Users$Subs;->getUpdateCount()I

    move-result v1

    .line 393
    .local v1, "updateCount":I
    if-eqz v1, :cond_d

    .line 394
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->num:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->num_bg:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    const/16 v3, 0x63

    if-le v1, v3, :cond_c

    .line 397
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->num:Landroid/widget/TextView;

    const-string v4, "99+"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 399
    :cond_c
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->num:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 402
    :cond_d
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->num:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v3, p1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->num_bg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addToDeleteList(Lcom/youku/vo/Podcast$Users$Subs;)V
    .locals 1
    .param p1, "sub"    # Lcom/youku/vo/Podcast$Users$Subs;

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/tudou/adapter/AttentionAdapter;->isDeleteListContainsItem(Lcom/youku/vo/Podcast$Users$Subs;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->mListSubs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    return-void
.end method

.method public clearDeleteList()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->mListSubs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->mListSubs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 523
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->podcast:Lcom/youku/vo/Podcast;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v0, v0, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeleteListSize()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->mListSubs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEditMode()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/tudou/adapter/AttentionAdapter;->isedit:Z

    return v0
.end method

.method public getItem(I)Lcom/youku/vo/Podcast$Users$Subs;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v0, v0, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/Podcast$Users$Subs;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/tudou/adapter/AttentionAdapter;->getItem(I)Lcom/youku/vo/Podcast$Users$Subs;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 126
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Lcom/tudou/adapter/AttentionAdapter;->getItem(I)Lcom/youku/vo/Podcast$Users$Subs;

    move-result-object v0

    .line 115
    .local v0, "user":Lcom/youku/vo/Podcast$Users$Subs;
    iget v2, v0, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0, p1}, Lcom/tudou/adapter/AttentionAdapter;->getItemViewType(I)I

    move-result v0

    .line 133
    .local v0, "type":I
    if-nez p2, :cond_1

    .line 134
    if-nez v0, :cond_0

    .line 135
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter;->context:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301ab

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 142
    :goto_0
    new-instance v1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/AttentionAdapter;)V

    .line 143
    .local v1, "viewholder":Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    invoke-direct {p0, v1, p2}, Lcom/tudou/adapter/AttentionAdapter;->initViewHolder(Lcom/tudou/adapter/AttentionAdapter$ViewHolder;Landroid/view/View;)V

    .line 144
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    :goto_1
    check-cast p3, Landroid/widget/ListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-direct {p0, v1, p1, p3}, Lcom/tudou/adapter/AttentionAdapter;->setViewHolderData(Lcom/tudou/adapter/AttentionAdapter$ViewHolder;ILandroid/widget/ListView;)V

    .line 149
    return-object p2

    .line 138
    .end local v1    # "viewholder":Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter;->context:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301aa

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;

    .restart local v1    # "viewholder":Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x2

    return v0
.end method

.method public isDeleteListContainsItem(Lcom/youku/vo/Podcast$Users$Subs;)Z
    .locals 1
    .param p1, "sub"    # Lcom/youku/vo/Podcast$Users$Subs;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->mListSubs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->mListSubs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAttentions()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 442
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 443
    const v6, 0x7f0d02c3

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(I)V

    .line 444
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 501
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v6, p0, Lcom/tudou/adapter/AttentionAdapter;->mListSubs:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/tudou/adapter/AttentionAdapter;->mListSubs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 449
    :cond_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 454
    :cond_2
    const-class v6, Lcom/youku/network/IHttpRequest;

    invoke-static {v6, v9}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 456
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v5, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/tudou/adapter/AttentionAdapter;->mListSubs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/Podcast$Users$Subs;

    .line 460
    .local v4, "sub":Lcom/youku/vo/Podcast$Users$Subs;
    iget v6, v4, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget v6, v4, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 464
    .end local v4    # "sub":Lcom/youku/vo/Podcast$Users$Subs;
    :cond_3
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 465
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {v3, v5}, Lcom/youku/http/TudouURLContainer;->getDeleteAttention(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "POST"

    invoke-static {v3, v5}, Lcom/youku/http/TudouURLContainer;->getDeleteAttentionMapString(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v7, v9, v8}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 469
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v6, Lcom/tudou/adapter/AttentionAdapter$2;

    invoke-direct {v6, p0}, Lcom/tudou/adapter/AttentionAdapter$2;-><init>(Lcom/tudou/adapter/AttentionAdapter;)V

    invoke-interface {v1, v0, v6}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0

    .line 485
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    :cond_4
    invoke-static {}, Lcom/tudou/service/attention/AttentionManagerImpl;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v6

    new-instance v7, Lcom/tudou/adapter/AttentionAdapter$3;

    invoke-direct {v7, p0}, Lcom/tudou/adapter/AttentionAdapter$3;-><init>(Lcom/tudou/adapter/AttentionAdapter;)V

    invoke-interface {v6, v3, v7}, Lcom/tudou/service/attention/IAttention;->deleteLocalAttention(Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$DeleteCallBack;)V

    goto :goto_0
.end method

.method public removeFromDeleteList(Lcom/youku/vo/Podcast$Users$Subs;)V
    .locals 1
    .param p1, "sub"    # Lcom/youku/vo/Podcast$Users$Subs;

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/tudou/adapter/AttentionAdapter;->isDeleteListContainsItem(Lcom/youku/vo/Podcast$Users$Subs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->mListSubs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    return-void
.end method

.method public removeItem(Lcom/youku/vo/Podcast$Users$Subs;)V
    .locals 1
    .param p1, "user"    # Lcom/youku/vo/Podcast$Users$Subs;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->podcast:Lcom/youku/vo/Podcast;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v0, v0, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0}, Lcom/tudou/adapter/AttentionAdapter;->notifyDataSetChanged()V

    .line 105
    :cond_0
    return-void
.end method

.method public setEditMode(Z)V
    .locals 3
    .param p1, "isedit"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/tudou/adapter/AttentionAdapter;->isedit:Z

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter;->podcast:Lcom/youku/vo/Podcast;

    iget-object v1, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, v1, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter;->podcast:Lcom/youku/vo/Podcast;

    iget-object v1, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, v1, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Podcast$Users$Subs;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/youku/vo/Podcast$Users$Subs;->isdelete:Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter;->podcast:Lcom/youku/vo/Podcast;

    iget-object v1, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, v1, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter;->podcast:Lcom/youku/vo/Podcast;

    iget-object v1, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, v1, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Podcast$Users$Subs;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/youku/vo/Podcast$Users$Subs;->isdelete:Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/adapter/AttentionAdapter;->clearDeleteList()V

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/tudou/adapter/AttentionAdapter;->notifyDataSetChanged()V

    .line 89
    return-void
.end method

.method public setFragment(Lcom/tudou/ui/fragment/AttentionFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tudou/adapter/AttentionAdapter;->mFragment:Lcom/tudou/ui/fragment/AttentionFragment;

    .line 62
    return-void
.end method

.method public setTotalNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/tudou/adapter/AttentionAdapter;->mTotalNum:I

    .line 66
    return-void
.end method
