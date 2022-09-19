.class public Lcom/youku/adapter/ManGridViewAdapter;
.super Ljava/lang/Object;
.source "ManGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;,
        Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final TYPE_0:I

.field private final TYPE_1:I

.field a:Landroid/app/Activity;

.field inflater:Landroid/view/LayoutInflater;

.field private isHide:Z

.field page:I

.field private parents:Landroid/widget/LinearLayout;

.field private playMode:Ljava/lang/String;

.field tab:Lcom/youku/vo/TABS;

.field tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TABS;",
            ">;"
        }
    .end annotation
.end field

.field title:Ljava/lang/String;

.field private type:I

.field videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TabsVideos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "parents"    # Landroid/widget/LinearLayout;

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/youku/adapter/ManGridViewAdapter;-><init>(Landroid/app/Activity;ZLandroid/widget/LinearLayout;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLandroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "hide"    # Z
    .param p3, "parents"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/ManGridViewAdapter;->tabs:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/ManGridViewAdapter;->videos:Ljava/util/ArrayList;

    .line 38
    iput-boolean v2, p0, Lcom/youku/adapter/ManGridViewAdapter;->isHide:Z

    .line 40
    iput v1, p0, Lcom/youku/adapter/ManGridViewAdapter;->TYPE_0:I

    .line 41
    iput v2, p0, Lcom/youku/adapter/ManGridViewAdapter;->TYPE_1:I

    .line 42
    iput v1, p0, Lcom/youku/adapter/ManGridViewAdapter;->type:I

    .line 51
    iput-boolean p2, p0, Lcom/youku/adapter/ManGridViewAdapter;->isHide:Z

    .line 52
    iput-object p1, p0, Lcom/youku/adapter/ManGridViewAdapter;->a:Landroid/app/Activity;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/ManGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 54
    iput v1, p0, Lcom/youku/adapter/ManGridViewAdapter;->page:I

    .line 55
    iput-object p3, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    .line 56
    new-instance v0, Lcom/youku/adapter/ManGridViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/youku/adapter/ManGridViewAdapter$1;-><init>(Lcom/youku/adapter/ManGridViewAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private initMVHolder(Landroid/view/View;)Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    new-instance v0, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;

    invoke-direct {v0, p0}, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;-><init>(Lcom/youku/adapter/ManGridViewAdapter;)V

    .line 290
    .local v0, "holder":Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;
    const v1, 0x7f0c0cbf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicRel0:Landroid/widget/LinearLayout;

    .line 291
    const v1, 0x7f0c0cc3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicRel1:Landroid/widget/LinearLayout;

    .line 292
    const v1, 0x7f0c0cc0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicBtn0:Landroid/widget/Button;

    .line 293
    const v1, 0x7f0c0cc4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicBtn1:Landroid/widget/Button;

    .line 294
    const v1, 0x7f0c0cc1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicTxt0:Landroid/widget/TextView;

    .line 295
    const v1, 0x7f0c0cc5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicTxt1:Landroid/widget/TextView;

    .line 296
    return-object v0
.end method

.method private initView(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TabsVideos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TabsVideos;>;"
    packed-switch p1, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 101
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/youku/adapter/ManGridViewAdapter;->setManView(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/youku/adapter/ManGridViewAdapter;->setMVView(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initViewHolder(Landroid/view/View;)Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 270
    new-instance v0, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;-><init>(Lcom/youku/adapter/ManGridViewAdapter;)V

    .line 271
    .local v0, "holder":Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;
    const v1, 0x7f0c0cb5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->noMusicRel0:Landroid/widget/RelativeLayout;

    .line 272
    const v1, 0x7f0c0cba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->noMusicRel1:Landroid/widget/RelativeLayout;

    .line 273
    const v1, 0x7f0c0cb6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectImg0:Landroid/widget/ImageView;

    .line 274
    const v1, 0x7f0c0cbb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectImg1:Landroid/widget/ImageView;

    .line 275
    const v1, 0x7f0c0cb7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectTitle0:Landroid/widget/TextView;

    .line 277
    const v1, 0x7f0c0cbc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectTitle1:Landroid/widget/TextView;

    .line 279
    const v1, 0x7f0c0cb8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectShort0:Landroid/widget/TextView;

    .line 281
    const v1, 0x7f0c0cbd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectShort1:Landroid/widget/TextView;

    .line 283
    const v1, 0x7f0c0cb9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectTime0:Landroid/widget/TextView;

    .line 284
    const v1, 0x7f0c0cbe

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectTime1:Landroid/widget/TextView;

    .line 285
    return-object v0
.end method

.method private setItemView(Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;Lcom/youku/vo/TabsVideos;Lcom/youku/vo/TabsVideos;)V
    .locals 8
    .param p1, "holder"    # Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;
    .param p2, "video0"    # Lcom/youku/vo/TabsVideos;
    .param p3, "video1"    # Lcom/youku/vo/TabsVideos;

    .prologue
    const v7, 0x7f020371

    const/4 v6, 0x4

    const/4 v5, 0x0

    const v4, -0x50506

    .line 184
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 186
    :cond_0
    if-nez p2, :cond_1

    .line 187
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->noMusicRel0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->noMusicRel0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 200
    :goto_1
    if-nez p3, :cond_2

    .line 201
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->noMusicRel1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->noMusicRel1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->noMusicRel0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectImg0:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    iget-object v0, p0, Lcom/youku/adapter/ManGridViewAdapter;->a:Landroid/app/Activity;

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p2, Lcom/youku/vo/TabsVideos;->img:Ljava/lang/String;

    iget-object v2, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectImg0:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 195
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectTitle0:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/TabsVideos;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectShort0:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/TabsVideos;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectTime0:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/TabsVideos;->stripe_top:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->noMusicRel0:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, p2}, Lcom/youku/adapter/ManGridViewAdapter;->setOnClickListener(Landroid/view/View;Lcom/youku/vo/TabsVideos;)V

    goto :goto_1

    .line 204
    :cond_2
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->noMusicRel1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectImg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    iget-object v0, p0, Lcom/youku/adapter/ManGridViewAdapter;->a:Landroid/app/Activity;

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p3, Lcom/youku/vo/TabsVideos;->img:Ljava/lang/String;

    iget-object v2, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectImg1:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 209
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectTitle1:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/vo/TabsVideos;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectShort1:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/vo/TabsVideos;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->manDirectTime1:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/vo/TabsVideos;->stripe_top:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->noMusicRel1:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, p3}, Lcom/youku/adapter/ManGridViewAdapter;->setOnClickListener(Landroid/view/View;Lcom/youku/vo/TabsVideos;)V

    goto/16 :goto_0
.end method

.method private setMVItemView(Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;Lcom/youku/vo/TabsVideos;Lcom/youku/vo/TabsVideos;)V
    .locals 4
    .param p1, "holder"    # Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;
    .param p2, "video0"    # Lcom/youku/vo/TabsVideos;
    .param p3, "video1"    # Lcom/youku/vo/TabsVideos;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 218
    if-nez p1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 220
    :cond_0
    if-nez p2, :cond_1

    .line 221
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicRel0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    :goto_1
    if-nez p3, :cond_2

    .line 228
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicRel1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicRel0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicTxt0:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/TabsVideos;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicRel0:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p2}, Lcom/youku/adapter/ManGridViewAdapter;->setOnClickListener(Landroid/view/View;Lcom/youku/vo/TabsVideos;)V

    goto :goto_1

    .line 230
    :cond_2
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicRel1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicTxt1:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/vo/TabsVideos;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p1, Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;->musicRel1:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p3}, Lcom/youku/adapter/ManGridViewAdapter;->setOnClickListener(Landroid/view/View;Lcom/youku/vo/TabsVideos;)V

    goto :goto_0
.end method

.method private setMVView(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TabsVideos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TabsVideos;>;"
    const/16 v5, 0xc

    const v10, 0x7f0c0cc2

    const v9, 0x7f0302c9

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 110
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_2

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x6

    if-ge v0, v4, :cond_5

    .line 114
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 116
    .local v3, "v":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/youku/adapter/ManGridViewAdapter;->initMVHolder(Landroid/view/View;)Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;

    move-result-object v6

    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TabsVideos;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/TabsVideos;

    invoke-direct {p0, v6, v4, v5}, Lcom/youku/adapter/ManGridViewAdapter;->setMVItemView(Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;Lcom/youku/vo/TabsVideos;Lcom/youku/vo/TabsVideos;)V

    .line 118
    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    .line 119
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 120
    const v4, 0x7f0c0cc6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_1
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "i":I
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v5, :cond_5

    .line 125
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 126
    .local v2, "size":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/lit8 v1, v4, 0x2

    .line 127
    .local v1, "modeSize":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 128
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 130
    .restart local v3    # "v":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/youku/adapter/ManGridViewAdapter;->initMVHolder(Landroid/view/View;)Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;

    move-result-object v6

    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TabsVideos;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/TabsVideos;

    invoke-direct {p0, v6, v4, v5}, Lcom/youku/adapter/ManGridViewAdapter;->setMVItemView(Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;Lcom/youku/vo/TabsVideos;Lcom/youku/vo/TabsVideos;)V

    .line 132
    if-nez v1, :cond_3

    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_3

    .line 133
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 134
    const v4, 0x7f0c0cc6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_3
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    .end local v3    # "v":Landroid/view/View;
    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 139
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 141
    .restart local v3    # "v":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/youku/adapter/ManGridViewAdapter;->initMVHolder(Landroid/view/View;)Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TabsVideos;

    invoke-direct {p0, v5, v4, v8}, Lcom/youku/adapter/ManGridViewAdapter;->setMVItemView(Lcom/youku/adapter/ManGridViewAdapter$MVViewHolder;Lcom/youku/vo/TabsVideos;Lcom/youku/vo/TabsVideos;)V

    .line 143
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    .end local v0    # "i":I
    .end local v1    # "modeSize":I
    .end local v2    # "size":I
    .end local v3    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private setManView(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TabsVideos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TabsVideos;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x7f0302c8

    const/4 v7, 0x0

    .line 150
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 152
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_1

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v11, :cond_2

    .line 154
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 156
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/youku/adapter/ManGridViewAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;

    move-result-object v6

    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TabsVideos;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/TabsVideos;

    invoke-direct {p0, v6, v4, v5}, Lcom/youku/adapter/ManGridViewAdapter;->setItemView(Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;Lcom/youku/vo/TabsVideos;Lcom/youku/vo/TabsVideos;)V

    .line 158
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 161
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 163
    .local v2, "view0":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/youku/adapter/ManGridViewAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;

    move-result-object v6

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TabsVideos;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/TabsVideos;

    invoke-direct {p0, v6, v4, v5}, Lcom/youku/adapter/ManGridViewAdapter;->setItemView(Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;Lcom/youku/vo/TabsVideos;Lcom/youku/vo/TabsVideos;)V

    .line 164
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 166
    .local v3, "view1":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/youku/adapter/ManGridViewAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;

    move-result-object v5

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TabsVideos;

    invoke-direct {p0, v5, v4, v7}, Lcom/youku/adapter/ManGridViewAdapter;->setItemView(Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;Lcom/youku/vo/TabsVideos;Lcom/youku/vo/TabsVideos;)V

    .line 167
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    .end local v2    # "view0":Landroid/view/View;
    .end local v3    # "view1":Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    .line 169
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v11, :cond_4

    .line 170
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 172
    .restart local v2    # "view0":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/youku/adapter/ManGridViewAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;

    move-result-object v6

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TabsVideos;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/TabsVideos;

    invoke-direct {p0, v6, v4, v5}, Lcom/youku/adapter/ManGridViewAdapter;->setItemView(Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;Lcom/youku/vo/TabsVideos;Lcom/youku/vo/TabsVideos;)V

    .line 173
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 174
    .end local v2    # "view0":Landroid/view/View;
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v10, :cond_2

    .line 175
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 177
    .restart local v2    # "view0":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/youku/adapter/ManGridViewAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;

    move-result-object v5

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TabsVideos;

    invoke-direct {p0, v5, v4, v7}, Lcom/youku/adapter/ManGridViewAdapter;->setItemView(Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;Lcom/youku/vo/TabsVideos;Lcom/youku/vo/TabsVideos;)V

    .line 178
    iget-object v4, p0, Lcom/youku/adapter/ManGridViewAdapter;->parents:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setOnClickListener(Landroid/view/View;Lcom/youku/vo/TabsVideos;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "video"    # Lcom/youku/vo/TabsVideos;

    .prologue
    .line 237
    new-instance v0, Lcom/youku/adapter/ManGridViewAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/youku/adapter/ManGridViewAdapter$2;-><init>(Lcom/youku/adapter/ManGridViewAdapter;Lcom/youku/vo/TabsVideos;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-void
.end method


# virtual methods
.method public setASideGridViewTabs(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TABS;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TABS;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/youku/adapter/ManGridViewAdapter;->setASideGridViewTabs(Ljava/util/ArrayList;I)V

    .line 66
    return-void
.end method

.method public setASideGridViewTabs(Ljava/util/ArrayList;I)V
    .locals 3
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TABS;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TABS;>;"
    iput-object p1, p0, Lcom/youku/adapter/ManGridViewAdapter;->tabs:Ljava/util/ArrayList;

    .line 73
    iput p2, p0, Lcom/youku/adapter/ManGridViewAdapter;->page:I

    .line 74
    if-nez p2, :cond_0

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/adapter/ManGridViewAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/TABS;

    iget v1, v1, Lcom/youku/vo/TABS;->is_default:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 77
    move p2, v0

    .line 82
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p2}, Lcom/youku/adapter/ManGridViewAdapter;->setCurrentPage(I)V

    .line 83
    return-void

    .line 75
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/youku/adapter/ManGridViewAdapter;->page:I

    .line 87
    invoke-virtual {p0, p1}, Lcom/youku/adapter/ManGridViewAdapter;->setResultPostion(I)V

    .line 88
    return-void
.end method

.method public setResultPostion(I)V
    .locals 2
    .param p1, "resultPostion"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/adapter/ManGridViewAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/youku/adapter/ManGridViewAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TABS;

    iput-object v0, p0, Lcom/youku/adapter/ManGridViewAdapter;->tab:Lcom/youku/vo/TABS;

    .line 93
    iget-object v0, p0, Lcom/youku/adapter/ManGridViewAdapter;->tab:Lcom/youku/vo/TABS;

    iget-object v0, v0, Lcom/youku/vo/TABS;->videos:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/ManGridViewAdapter;->videos:Ljava/util/ArrayList;

    .line 94
    iget-object v0, p0, Lcom/youku/adapter/ManGridViewAdapter;->tab:Lcom/youku/vo/TABS;

    iget v0, v0, Lcom/youku/vo/TABS;->show_type:I

    iget-object v1, p0, Lcom/youku/adapter/ManGridViewAdapter;->videos:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/youku/adapter/ManGridViewAdapter;->initView(ILjava/util/ArrayList;)V

    .line 96
    :cond_0
    return-void
.end method
