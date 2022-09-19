.class public Lcom/tudou/ui/fragment/CrashResultFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "CrashResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private crash:Lcom/youku/vo/Crash;

.field private hander:Landroid/os/Handler;

.field private img:Landroid/widget/ImageView;

.field private img_play:Landroid/widget/ImageView;

.field private mHasResult:Landroid/view/View;

.field private mNoResult:Landroid/view/View;

.field private mResaosao:Landroid/widget/Button;

.field private play:Landroid/widget/LinearLayout;

.field private retips:Landroid/widget/ImageView;

.field private status:Landroid/widget/TextView;

.field private tag:Ljava/lang/String;

.field private title:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 42
    const-string v0, "CrashResultAcitvity"

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->tag:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/tudou/ui/fragment/CrashResultFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CrashResultFragment$1;-><init>(Lcom/tudou/ui/fragment/CrashResultFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->hander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/CrashResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CrashResultFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CrashResultFragment;->getVideo()V

    return-void
.end method

.method private dumpTOFinish()V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 226
    return-void
.end method

.method private getIntentFromCrash()V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 73
    const-string v1, "crash"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Crash;

    iput-object v1, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    .line 75
    :cond_0
    return-void
.end method

.method private getVideo()V
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashResultFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    iget-object v2, v2, Lcom/youku/vo/Crash;->pic:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 145
    iget-object v1, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    iget-object v2, v2, Lcom/youku/vo/Crash;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/CrashResultFragment;->showNoResult(Z)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/CrashResultFragment;->showNoResult(Z)V

    .line 149
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->view:Landroid/view/View;

    const v2, 0x7f0c00fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    .local v0, "no_result_white_tt":Landroid/widget/TextView;
    const v1, 0x7f0d03ba

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/CrashResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initTitle(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    const v4, 0x7f0c0094

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 81
    const v4, 0x7f0c00ef

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, "titleView":Landroid/view/View;
    const v4, 0x7f0c00a7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 85
    .local v0, "back_img":Landroid/widget/ImageView;
    new-instance v4, Lcom/tudou/ui/fragment/CrashResultFragment$2;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/CrashResultFragment$2;-><init>(Lcom/tudou/ui/fragment/CrashResultFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v4, 0x7f0c00df

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 95
    .local v3, "txt_title":Landroid/widget/TextView;
    const v4, 0x7f0d00cd

    invoke-virtual {p0, v4}, Lcom/tudou/ui/fragment/CrashResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 100
    const v0, 0x7f0c00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->retips:Landroid/widget/ImageView;

    .line 101
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->retips:Landroid/widget/ImageView;

    const v1, 0x7f02015c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    const v0, 0x7f0c00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->mResaosao:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->mResaosao:Landroid/widget/Button;

    const v1, 0x7f0d00cc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 104
    const v0, 0x7f0c00f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->mNoResult:Landroid/view/View;

    .line 105
    const v0, 0x7f0c00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->mHasResult:Landroid/view/View;

    .line 106
    const v0, 0x7f0c00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->title:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0c00f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->status:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0c00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->img:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0c00f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->play:Landroid/widget/LinearLayout;

    .line 110
    const v0, 0x7f0c00f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->img_play:Landroid/widget/ImageView;

    .line 111
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/CrashResultFragment;->initTitle(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->mResaosao:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->img_play:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->play:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->mNoResult:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->mHasResult:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void
.end method


# virtual methods
.method public getBundleValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "Default"    # Ljava/lang/String;
    .param p4, "throwException"    # Z

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 209
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 218
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p3

    .line 221
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 210
    .restart local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p4, :cond_2

    .line 212
    const-string v2, "Youku"

    const-string v3, "F.getBundleValue()"

    invoke-static {v2, v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 214
    :cond_2
    const-string v2, "Youku"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "throw Exception:  get String Bundle label "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method goPlayer()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    .line 176
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "\u78b0\u649e\u7a7f\u8d8a\u89c6\u9891\u64ad\u653e"

    const-class v2, Lcom/tudou/ui/fragment/CrashResultFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u78b0\u649e\u7a7f\u8d8a-\u64ad\u653e"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 190
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    iget-object v0, v0, Lcom/youku/vo/Crash;->albumId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 191
    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    .line 192
    .local v4, "type":Lcom/tudou/android/Youku$Type;
    const-string v6, ""

    .line 197
    .local v6, "listCode":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    iget-object v1, v0, Lcom/youku/vo/Crash;->itemCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    iget-object v2, v0, Lcom/youku/vo/Crash;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    iget-wide v10, v0, Lcom/youku/vo/Crash;->optime:J

    cmp-long v0, v10, v8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    iget-wide v8, v0, Lcom/youku/vo/Crash;->optime:J

    :cond_2
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    iget-object v5, v0, Lcom/youku/vo/Crash;->lang:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tudou/ui/fragment/CrashResultFragment;->goPlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .end local v4    # "type":Lcom/tudou/android/Youku$Type;
    .end local v6    # "listCode":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    .line 195
    .restart local v4    # "type":Lcom/tudou/android/Youku$Type;
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    iget-object v6, v0, Lcom/youku/vo/Crash;->playlistCode:Ljava/lang/String;

    .restart local v6    # "listCode":Ljava/lang/String;
    goto :goto_1
.end method

.method goPlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "point"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/tudou/android/Youku$Type;
    .param p5, "lang"    # Ljava/lang/String;
    .param p6, "playListCode"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "\\d+"

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v3, v1, 0x3e8

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/tudou/android/TudouApi;->goPlayerWithpoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void

    .line 201
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 161
    :sswitch_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CrashResultFragment;->dumpTOFinish()V

    goto :goto_0

    .line 164
    :sswitch_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashResultFragment;->goPlayer()V

    goto :goto_0

    .line 167
    :sswitch_2
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashResultFragment;->goPlayer()V

    goto :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x7f0c00f4 -> :sswitch_1
        0x7f0c00f6 -> :sswitch_2
        0x7f0c00fb -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    const v0, 0x7f030014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->view:Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CrashResultFragment;->getIntentFromCrash()V

    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->view:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/CrashResultFragment;->initView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 138
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 139
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 64
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->hander:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 66
    return-void
.end method

.method showNoResult(Z)V
    .locals 8
    .param p1, "IsShowNoResult"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "\u9996\u9875\u78b0\u649e\u7a7f\u8d8a\u5931\u8d25"

    const-class v2, Lcom/tudou/ui/fragment/CrashResultFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u78b0\u649e\u7a7f\u8d8a-\u5931\u8d25"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 126
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->mNoResult:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->mHasResult:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->status:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u89c2\u770b\u5230:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->crash:Lcom/youku/vo/Crash;

    iget-wide v2, v2, Lcom/youku/vo/Crash;->optime:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/youku/util/Util;->formatTime2(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->mNoResult:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment;->mHasResult:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
