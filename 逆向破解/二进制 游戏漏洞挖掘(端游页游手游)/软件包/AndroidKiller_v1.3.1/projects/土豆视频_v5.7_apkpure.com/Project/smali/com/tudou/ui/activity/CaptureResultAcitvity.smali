.class public Lcom/tudou/ui/activity/CaptureResultAcitvity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "CaptureResultAcitvity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private img:Landroid/widget/ImageView;

.field private img_play:Landroid/widget/ImageView;

.field private mHasResult:Landroid/view/View;

.field private mNoResult:Landroid/view/View;

.field private mResaosao:Landroid/widget/Button;

.field private play:Landroid/widget/LinearLayout;

.field private retips:Landroid/widget/ImageView;

.field private saoJson:Lcom/youku/vo/Saosao;

.field private status:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static URLEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 207
    .local v0, "StrUrl":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 208
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 225
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 207
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :sswitch_0
    const-string v2, "%2F"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 213
    :sswitch_1
    const-string v2, "%3A"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 216
    :sswitch_2
    const-string v2, "%3F"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 219
    :sswitch_3
    const-string v2, "%3D"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 222
    :sswitch_4
    const-string v2, "%26"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 229
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_4
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3d -> :sswitch_3
        0x3f -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Lcom/youku/vo/Saosao;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CaptureResultAcitvity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->saoJson:Lcom/youku/vo/Saosao;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/activity/CaptureResultAcitvity;Lcom/youku/vo/Saosao;)Lcom/youku/vo/Saosao;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/CaptureResultAcitvity;
    .param p1, "x1"    # Lcom/youku/vo/Saosao;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->saoJson:Lcom/youku/vo/Saosao;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CaptureResultAcitvity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CaptureResultAcitvity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->status:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CaptureResultAcitvity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->img:Landroid/widget/ImageView;

    return-object v0
.end method

.method private dumpTOFinish()V
    .locals 2

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/zijunlin/Zxing/CaptureActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 325
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 326
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->finish()V

    .line 327
    return-void
.end method

.method private getVideo()V
    .locals 10

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x1

    .line 137
    iget-object v5, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->mNoResult:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v5, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->mHasResult:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_0

    .line 140
    const v5, 0x7f0c00fa

    invoke-virtual {p0, v5}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 141
    .local v2, "no_result_white_tt":Landroid/widget/TextView;
    const v5, 0x7f0d03ba

    invoke-virtual {p0, v5}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0, v9}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->showNoResult(Z)V

    .line 203
    .end local v2    # "no_result_white_tt":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {p0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 148
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "url"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->getBundleValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "posturl":Ljava/lang/String;
    const-string/jumbo v5, "\u4e8c\u7ef4\u7801"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URLEncode \u4e4b\u524d result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v5, "\u4e8c\u7ef4\u7801"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URLEncode \u4e4b\u540e result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-class v5, Lcom/youku/network/IHttpRequest;

    invoke-static {v5, v9}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 155
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {v3}, Lcom/youku/http/TudouURLContainer;->getSaosaoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v5, "\u4e8c\u7ef4\u7801"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v5, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;

    invoke-direct {v5, p0}, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;-><init>(Lcom/tudou/ui/activity/CaptureResultAcitvity;)V

    invoke-interface {v1, v0, v5}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 5

    .prologue
    .line 80
    const v4, 0x7f0c00ef

    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 81
    .local v3, "titleView":Landroid/view/View;
    const v4, 0x7f0c024f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .local v0, "leftImg":Landroid/widget/ImageView;
    const v4, 0x7f0c0251

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "right":Landroid/view/View;
    const v4, 0x7f0c06b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 85
    .local v2, "titleTV":Landroid/widget/TextView;
    const v4, 0x7f0208e1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 87
    const v4, 0x7f0d03b8

    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v4, Lcom/tudou/ui/activity/CaptureResultAcitvity$1;

    invoke-direct {v4, p0}, Lcom/tudou/ui/activity/CaptureResultAcitvity$1;-><init>(Lcom/tudou/ui/activity/CaptureResultAcitvity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 100
    const v0, 0x7f0c00fc

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->retips:Landroid/widget/ImageView;

    .line 101
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->retips:Landroid/widget/ImageView;

    const v1, 0x7f020826

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    const v0, 0x7f0c00fb

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->mResaosao:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->mResaosao:Landroid/widget/Button;

    const v1, 0x7f0d03bb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 104
    const v0, 0x7f0c00f7

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->mNoResult:Landroid/view/View;

    .line 105
    const v0, 0x7f0c00f0

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->mHasResult:Landroid/view/View;

    .line 106
    const v0, 0x7f0c00f2

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->title:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0c00f5

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->status:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0c00f3

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->img:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0c00f6

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->play:Landroid/widget/LinearLayout;

    .line 110
    const v0, 0x7f0c00f4

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->img_play:Landroid/widget/ImageView;

    .line 111
    invoke-direct {p0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->initTitle()V

    .line 112
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
    .line 293
    const/4 v1, 0x0

    .line 295
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 305
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p3

    .line 308
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 296
    .restart local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p4, :cond_2

    .line 298
    const-string v2, "Youku"

    const-string v3, "F.getBundleValue()"

    invoke-static {v2, v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 300
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
    .locals 7

    .prologue
    .line 252
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->saoJson:Lcom/youku/vo/Saosao;

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 259
    :cond_1
    const-string/jumbo v1, "\u626b\u63cf\u7ed3\u679c\u64ad\u653e\u6309\u94ae\u70b9\u51fb"

    const-class v0, Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u626b\u63cf-\u64ad\u653e"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 265
    const-string v0, "dazhu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saoJson.lang:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->saoJson:Lcom/youku/vo/Saosao;

    iget-object v2, v2, Lcom/youku/vo/Saosao;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->saoJson:Lcom/youku/vo/Saosao;

    iget-object v0, v0, Lcom/youku/vo/Saosao;->albumid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    .line 270
    .local v4, "type":Lcom/tudou/android/Youku$Type;
    const-string v6, ""

    .line 275
    .local v6, "listCode":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->saoJson:Lcom/youku/vo/Saosao;

    iget-object v1, v0, Lcom/youku/vo/Saosao;->itemCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->saoJson:Lcom/youku/vo/Saosao;

    iget-object v2, v0, Lcom/youku/vo/Saosao;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->saoJson:Lcom/youku/vo/Saosao;

    iget-object v3, v0, Lcom/youku/vo/Saosao;->point:Ljava/lang/String;

    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->saoJson:Lcom/youku/vo/Saosao;

    iget-object v5, v0, Lcom/youku/vo/Saosao;->lang:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->goPlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    .end local v4    # "type":Lcom/tudou/android/Youku$Type;
    .end local v6    # "listCode":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    .line 273
    .restart local v4    # "type":Lcom/tudou/android/Youku$Type;
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->saoJson:Lcom/youku/vo/Saosao;

    iget-object v6, v0, Lcom/youku/vo/Saosao;->playlistCode:Ljava/lang/String;

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
    .line 283
    if-eqz p3, :cond_0

    const-string v0, "\\d+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/tudou/android/TudouApi;->goPlayerWithpoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void

    .line 283
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 237
    :sswitch_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->finish()V

    goto :goto_0

    .line 240
    :sswitch_1
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->goPlayer()V

    goto :goto_0

    .line 243
    :sswitch_2
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->goPlayer()V

    goto :goto_0

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x7f0c00f4 -> :sswitch_1
        0x7f0c00f6 -> :sswitch_2
        0x7f0c00fb -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->requestWindowFeature(I)Z

    .line 59
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->setRequestedOrientation(I)V

    .line 60
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->initView()V

    .line 62
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->mResaosao:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->img_play:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->play:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-direct {p0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->getVideo()V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 132
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 133
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onDestroy()V

    .line 134
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 313
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 319
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onResume()V

    .line 77
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onStart()V

    .line 72
    return-void
.end method

.method showNoResult(Z)V
    .locals 8
    .param p1, "IsShowNoResult"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 115
    if-eqz p1, :cond_0

    .line 116
    const-string/jumbo v1, "\u626b\u63cf\u89c6\u9891\u5931\u8d25"

    const-class v0, Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u626b\u4e00\u626b-\u5931\u8d25"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 122
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->mNoResult:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->mHasResult:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->mNoResult:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity;->mHasResult:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
