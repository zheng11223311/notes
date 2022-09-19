.class public Lcom/tudou/videoshare/WBShareActivity;
.super Landroid/app/Activity;
.source "WBShareActivity.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;


# static fields
.field private static final BACK_KEY:Ljava/lang/String; = "_weibo_resp_errstr"

.field private static final BLACK_MOBILE:Ljava/lang/String; = "MI+NOTE+LTE"

.field private static final FINISH:I = 0x1

.field public static final ShareContent:Ljava/lang/String; = "shareContent"

.field private static mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mExist:Z

.field private mFinishHandler:Landroid/os/Handler;

.field private mImgPath:Ljava/lang/String;

.field private mImgUrl:Ljava/lang/String;

.field private mShareType:I

.field private mTxtContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/videoshare/WBShareActivity;->mExist:Z

    .line 145
    new-instance v0, Lcom/tudou/videoshare/WBShareActivity$1;

    invoke-direct {v0, p0}, Lcom/tudou/videoshare/WBShareActivity$1;-><init>(Lcom/tudou/videoshare/WBShareActivity;)V

    iput-object v0, p0, Lcom/tudou/videoshare/WBShareActivity;->mFinishHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/videoshare/WBShareActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/videoshare/WBShareActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/tudou/videoshare/WBShareActivity;->mExist:Z

    return v0
.end method

.method public static createWeiboShareAPI(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v0, Lcom/tudou/videoshare/WBShareActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "3938609172"

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    sput-object v0, Lcom/tudou/videoshare/WBShareActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    .line 74
    :cond_0
    sget-object v0, Lcom/tudou/videoshare/WBShareActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    return-object v0
.end method

.method private getShareImgContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v4, "sBuilder":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v5, v5, Lcom/youku/vo/Initial;->share_document:Lcom/youku/vo/Initial$ShareDocument;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v5, v5, Lcom/youku/vo/Initial;->share_document:Lcom/youku/vo/Initial$ShareDocument;

    iget-object v5, v5, Lcom/youku/vo/Initial$ShareDocument;->entrance:Lcom/youku/vo/Entrance;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v5, v5, Lcom/youku/vo/Initial;->share_document:Lcom/youku/vo/Initial$ShareDocument;

    iget-object v5, v5, Lcom/youku/vo/Initial$ShareDocument;->entrance:Lcom/youku/vo/Entrance;

    iget-object v5, v5, Lcom/youku/vo/Entrance;->photo_cut:Lcom/youku/vo/PhotoCut;

    if-eqz v5, :cond_3

    .line 173
    sget-object v5, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v5, v5, Lcom/youku/vo/Initial;->share_document:Lcom/youku/vo/Initial$ShareDocument;

    iget-object v5, v5, Lcom/youku/vo/Initial$ShareDocument;->entrance:Lcom/youku/vo/Entrance;

    iget-object v3, v5, Lcom/youku/vo/Entrance;->photo_cut:Lcom/youku/vo/PhotoCut;

    .line 174
    .local v3, "photoCut":Lcom/youku/vo/PhotoCut;
    invoke-virtual {v3}, Lcom/youku/vo/PhotoCut;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/youku/vo/PhotoCut;->getDownload()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "download":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/youku/vo/PhotoCut;->getFrontTag()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "front":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 178
    const-string/jumbo v0, "\u6211\u53d1\u73b0\u4e86\u4e00\u5f20\u7cbe\u5f69\u7684\u89c6\u9891\u622a\u56fe\uff0c\u5feb\u6765\u770b\u770b\u5427"

    .line 180
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    const-string/jumbo v1, "\u4e0b\u8f7d\u571f\u8c46app:"

    .line 183
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    const-string/jumbo v2, "\uff3b\u571f\u8c46\uff3d"

    .line 186
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "http://mobile.tudou.com\uff09"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "download":Ljava/lang/String;
    .end local v2    # "front":Ljava/lang/String;
    .end local v3    # "photoCut":Lcom/youku/vo/PhotoCut;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 189
    :cond_3
    const-string/jumbo v5, "\uff3b\u571f\u8c46\uff3d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6211\u53d1\u73b0\u4e86\u4e00\u5f20\u7cbe\u5f69\u7684\u89c6\u9891\u622a\u56fe\uff0c\u5feb\u6765\u770b\u770b\u5427"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u4e0b\u8f7d\u571f\u8c46app:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "http://mobile.tudou.com\uff09"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static isBlackMobile()Z
    .locals 2

    .prologue
    .line 64
    const-string v0, "MI+NOTE+LTE"

    sget-object v1, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendMessage(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "delayTime"    # J

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tudou/videoshare/WBShareActivity;->mFinishHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 157
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/tudou/videoshare/WBShareActivity;->mFinishHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/tudou/videoshare/WBShareActivity;->mFinishHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private sendMultiMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "shareText"    # Ljava/lang/String;
    .param p2, "shareUrl"    # Ljava/lang/String;
    .param p3, "imgPath"    # Ljava/lang/String;
    .param p4, "shareType"    # I

    .prologue
    .line 247
    new-instance v10, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v10}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>()V

    .line 250
    .local v10, "weiboMessage":Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
    new-instance v9, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v9}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 251
    .local v9, "textObject":Lcom/sina/weibo/sdk/api/TextObject;
    iput-object p1, v9, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 252
    iput-object v9, v10, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    .line 254
    packed-switch p4, :pswitch_data_0

    .line 273
    :goto_0
    new-instance v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;-><init>()V

    .line 275
    .local v2, "request":Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->transaction:Ljava/lang/String;

    .line 276
    iput-object v10, v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 278
    invoke-static {}, Lcom/tudou/videoshare/AccessTokenKeeper;->readAccessToken()Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v6

    .line 279
    .local v6, "accessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    const-string v4, ""

    .line 280
    .local v4, "token":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 281
    invoke-virtual {v6}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 283
    :cond_0
    sget-object v0, Lcom/tudou/videoshare/WBShareActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-static {}, Lcom/tudou/videoshare/SinaShare;->getInstance()Lcom/tudou/videoshare/SinaShare;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/videoshare/SinaShare;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v3

    new-instance v5, Lcom/tudou/videoshare/WBShareActivity$2;

    invoke-direct {v5, p0}, Lcom/tudou/videoshare/WBShareActivity$2;-><init>(Lcom/tudou/videoshare/WBShareActivity;)V

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;Lcom/sina/weibo/sdk/auth/AuthInfo;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z

    .line 306
    return-void

    .line 256
    .end local v2    # "request":Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;
    .end local v4    # "token":Ljava/lang/String;
    .end local v6    # "accessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    :pswitch_0
    new-instance v8, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v8}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>()V

    .line 257
    .local v8, "mediaObject":Lcom/sina/weibo/sdk/api/WebpageObject;
    sget-object v0, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    iput-object v0, v8, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    .line 258
    iput-object p2, v8, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    .line 259
    iput-object v8, v10, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    goto :goto_0

    .line 262
    .end local v8    # "mediaObject":Lcom/sina/weibo/sdk/api/WebpageObject;
    :pswitch_1
    new-instance v7, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v7}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 263
    .local v7, "imageObject":Lcom/sina/weibo/sdk/api/ImageObject;
    iput-object p3, v7, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    .line 264
    iput-object v7, v10, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    iput-boolean v8, p0, Lcom/tudou/videoshare/WBShareActivity;->mExist:Z

    .line 85
    invoke-virtual {p0, v8}, Lcom/tudou/videoshare/WBShareActivity;->requestWindowFeature(I)Z

    .line 88
    invoke-static {p0}, Lcom/tudou/videoshare/WBShareActivity;->createWeiboShareAPI(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    .line 93
    sget-object v4, Lcom/tudou/videoshare/WBShareActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v4}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    .line 97
    invoke-virtual {p0}, Lcom/tudou/videoshare/WBShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mBundle:Landroid/os/Bundle;

    .line 98
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mBundle:Landroid/os/Bundle;

    const-string v5, "mShareType"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mShareType:I

    .line 99
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mBundle:Landroid/os/Bundle;

    const-string v5, "_weibo_resp_errstr"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "backTag":Ljava/lang/String;
    const-string v4, "TAG_TUDOU"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WB=====onCreate=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/tudou/videoshare/WBShareActivity;->mShareType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=saveInstance="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=Bundle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/videoshare/WBShareActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=backTag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    sget-object v4, Lcom/tudou/videoshare/WBShareActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-virtual {p0}, Lcom/tudou/videoshare/WBShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v4, v5, p0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    .line 134
    :goto_0
    return-void

    .line 111
    :cond_0
    iget v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mShareType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 112
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "targetUrl"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mTxtContent:Ljava/lang/String;

    .line 115
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mBundle:Landroid/os/Bundle;

    const-string v5, "imageUrl"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mImgUrl:Ljava/lang/String;

    .line 116
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mTxtContent:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/videoshare/WBShareActivity;->mImgUrl:Ljava/lang/String;

    iget v6, p0, Lcom/tudou/videoshare/WBShareActivity;->mShareType:I

    invoke-direct {p0, v4, v5, v7, v6}, Lcom/tudou/videoshare/WBShareActivity;->sendMultiMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :goto_1
    const-wide/16 v4, 0x1f4

    invoke-direct {p0, v8, v4, v5}, Lcom/tudou/videoshare/WBShareActivity;->sendMessage(IJ)V

    goto :goto_0

    .line 117
    :cond_1
    iget v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mShareType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 119
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "videoPath"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .restart local v2    # "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mBundle:Landroid/os/Bundle;

    const-string v5, "imgPath"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mImgPath:Ljava/lang/String;

    .line 121
    invoke-direct {p0, v2}, Lcom/tudou/videoshare/WBShareActivity;->getShareImgContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mTxtContent:Ljava/lang/String;

    .line 122
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mTxtContent:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/videoshare/WBShareActivity;->mImgPath:Ljava/lang/String;

    iget v6, p0, Lcom/tudou/videoshare/WBShareActivity;->mShareType:I

    invoke-direct {p0, v4, v7, v5, v6}, Lcom/tudou/videoshare/WBShareActivity;->sendMultiMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 123
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    iget v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mShareType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 124
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1    # "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "videoPath"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "videoUrl":Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/tudou/videoshare/ShareUtil;->getShortVideoContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mTxtContent:Ljava/lang/String;

    .line 127
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mTxtContent:Ljava/lang/String;

    iget v5, p0, Lcom/tudou/videoshare/WBShareActivity;->mShareType:I

    invoke-direct {p0, v4, v7, v7, v5}, Lcom/tudou/videoshare/WBShareActivity;->sendMultiMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 129
    .end local v1    # "title":Ljava/lang/String;
    .end local v3    # "videoUrl":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "shareContent"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mTxtContent:Ljava/lang/String;

    .line 130
    iget-object v4, p0, Lcom/tudou/videoshare/WBShareActivity;->mTxtContent:Ljava/lang/String;

    iget v5, p0, Lcom/tudou/videoshare/WBShareActivity;->mShareType:I

    invoke-direct {p0, v4, v7, v7, v5}, Lcom/tudou/videoshare/WBShareActivity;->sendMultiMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/videoshare/WBShareActivity;->mExist:Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/videoshare/WBShareActivity;->mFinishHandler:Landroid/os/Handler;

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 141
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 205
    const-string v0, "TAG_TUDOU"

    const-string v1, "WB=====onNewIntent"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 211
    sget-object v0, Lcom/tudou/videoshare/WBShareActivity;->mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0, p1, p0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    .line 212
    return-void
.end method

.method public onResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)V
    .locals 4
    .param p1, "baseResp"    # Lcom/sina/weibo/sdk/api/share/BaseResponse;

    .prologue
    .line 224
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WB=====onResponse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget v0, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errCode:I

    packed-switch v0, :pswitch_data_0

    .line 239
    :goto_0
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tudou/videoshare/WBShareActivity;->sendMessage(IJ)V

    .line 240
    return-void

    .line 227
    :pswitch_0
    const v0, 0x7f0d0482

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 230
    :pswitch_1
    const v0, 0x7f0d047e

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 233
    :pswitch_2
    const v0, 0x7f0d047f

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
