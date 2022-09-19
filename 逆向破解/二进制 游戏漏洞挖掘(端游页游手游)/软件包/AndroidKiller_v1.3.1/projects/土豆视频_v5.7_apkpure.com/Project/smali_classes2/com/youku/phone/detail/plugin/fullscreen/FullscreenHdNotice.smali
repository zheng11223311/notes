.class public Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;
.super Landroid/widget/FrameLayout;
.source "FullscreenHdNotice.java"

# interfaces
.implements Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;,
        Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnno:Lcom/tudou/detail/vo/Annotation;

.field private mBtnClosed:Landroid/view/View;

.field private mBtnLink:Landroid/widget/Button;

.field private mIcon:Landroid/widget/ImageView;

.field private mImgContent:Landroid/view/View;

.field public mIsShow:Z

.field mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

.field private mTextContent:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

.field private mVote:Lcom/tudou/detail/vo/VoteInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mIsShow:Z

    .line 68
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/tudou/detail/vo/Annotation;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mAnno:Lcom/tudou/detail/vo/Annotation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/tudou/detail/vo/VoteInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mVote:Lcom/tudou/detail/vo/VoteInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mTextContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mImgContent:Landroid/view/View;

    return-object v0
.end method

.method private parseUrl(Ljava/lang/String;)Z
    .locals 14
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v11, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseUrl s= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :try_start_0
    const-string v0, ""

    .line 173
    .local v0, "aid":Ljava/lang/String;
    const-string v6, ""

    .line 174
    .local v6, "plid":Ljava/lang/String;
    const-string v10, ""

    .line 175
    .local v10, "vid":Ljava/lang/String;
    const-string v11, "albumplay"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "albumIndex":I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_0

    .line 177
    const/4 v4, -0x1

    .line 178
    .local v4, "end":I
    const/4 v7, -0x1

    .line 179
    .local v7, "start":I
    const-string v11, "/"

    invoke-virtual {p1, v11, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 180
    const-string v11, "/"

    const-string v12, "albumplay"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 181
    const/4 v11, -0x1

    if-eq v4, v11, :cond_8

    .line 182
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 183
    move v7, v4

    .line 184
    const-string v11, ".html"

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 185
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 186
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "---"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    .end local v4    # "end":I
    .end local v7    # "start":I
    :cond_0
    :goto_0
    const-string v11, "listplay"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 195
    .local v5, "plIndex":I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_1

    .line 196
    const/4 v4, -0x1

    .line 197
    .restart local v4    # "end":I
    const/4 v7, -0x1

    .line 198
    .restart local v7    # "start":I
    const-string v11, "/"

    invoke-virtual {p1, v11, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 199
    const-string v11, "/"

    const-string v12, "listplay"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 200
    const/4 v11, -0x1

    if-eq v4, v11, :cond_9

    .line 201
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 202
    move v7, v4

    .line 203
    const-string v11, ".html"

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 204
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 205
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "---"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    .end local v4    # "end":I
    .end local v7    # "start":I
    :cond_1
    :goto_1
    const-string v11, "view"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 214
    .local v9, "ugcIndex":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_3

    .line 215
    const/4 v4, -0x1

    .line 216
    .restart local v4    # "end":I
    const/4 v7, -0x1

    .line 217
    .restart local v7    # "start":I
    const-string v11, "/"

    invoke-virtual {p1, v11, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 218
    const-string v11, ".html"

    const-string v12, "view"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v9

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 219
    const/4 v11, -0x1

    if-eq v4, v11, :cond_a

    .line 220
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 227
    :cond_2
    :goto_2
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    .end local v4    # "end":I
    .end local v7    # "start":I
    :cond_3
    sget-object v11, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "aid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", plid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", vid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 232
    :cond_4
    sget-object v8, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    .line 233
    .local v8, "type":Lcom/tudou/android/Youku$Type;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 234
    sget-object v8, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    .line 236
    :cond_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v2, "b":Landroid/os/Bundle;
    const-string v11, "video_id"

    sget-object v12, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    if-ne v8, v12, :cond_6

    move-object v10, v0

    .end local v10    # "vid":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v11, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    if-ne v8, v11, :cond_7

    .line 239
    const-string v11, "intent.extra.album.id"

    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_7
    const-string v11, "type"

    invoke-virtual {v2, v11, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 242
    const-string v11, "playlistCode"

    invoke-virtual {v2, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8, v2}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Lcom/tudou/android/Youku$Type;Landroid/os/Bundle;)V

    .line 244
    const/4 v11, 0x1

    .line 249
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "albumIndex":I
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v5    # "plIndex":I
    .end local v6    # "plid":Ljava/lang/String;
    .end local v8    # "type":Lcom/tudou/android/Youku$Type;
    .end local v9    # "ugcIndex":I
    :goto_3
    return v11

    .line 188
    .restart local v0    # "aid":Ljava/lang/String;
    .restart local v1    # "albumIndex":I
    .restart local v4    # "end":I
    .restart local v6    # "plid":Ljava/lang/String;
    .restart local v7    # "start":I
    .restart local v10    # "vid":Ljava/lang/String;
    :cond_8
    const-string v11, ".html"

    const-string v12, "albumplay"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 189
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 190
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "albumIndex":I
    .end local v4    # "end":I
    .end local v6    # "plid":Ljava/lang/String;
    .end local v7    # "start":I
    .end local v10    # "vid":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 249
    .local v3, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_3

    .line 207
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "aid":Ljava/lang/String;
    .restart local v1    # "albumIndex":I
    .restart local v4    # "end":I
    .restart local v5    # "plIndex":I
    .restart local v6    # "plid":Ljava/lang/String;
    .restart local v7    # "start":I
    .restart local v10    # "vid":Ljava/lang/String;
    :cond_9
    const-string v11, ".html"

    const-string v12, "listplay"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 208
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 209
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 222
    .restart local v9    # "ugcIndex":I
    :cond_a
    const-string v11, "/"

    const-string v12, "view"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v9

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 223
    const/4 v11, -0x1

    if-eq v4, v11, :cond_2

    .line 224
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto/16 :goto_2

    .line 246
    .end local v4    # "end":I
    .end local v7    # "start":I
    :cond_b
    const/4 v11, 0x0

    goto :goto_3
.end method


# virtual methods
.method public hide(Z)V
    .locals 8
    .param p1, "anim"    # Z

    .prologue
    const/4 v7, 0x0

    .line 334
    iput-boolean v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mIsShow:Z

    .line 336
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 337
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "type"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    sget-object v6, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    if-ne v4, v6, :cond_1

    const-string v4, "\u6ce8\u91ca"

    :goto_0
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v4, "t1.detail_player.promptclose"

    invoke-static {v4, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 339
    if-eqz p1, :cond_2

    .line 340
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mTextContent:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mTextContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const v5, 0x43ba8000    # 373.0f

    invoke-static {v5}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 342
    .local v2, "startWidth":I
    const/4 v0, 0x0

    .line 343
    .local v0, "endWidth":I
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 344
    .local v3, "trans":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 345
    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$6;

    invoke-direct {v4, p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$6;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 358
    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;

    invoke-direct {v4, p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 399
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 407
    .end local v0    # "endWidth":I
    .end local v2    # "startWidth":I
    .end local v3    # "trans":Landroid/animation/ValueAnimator;
    :cond_0
    :goto_1
    return-void

    .line 337
    :cond_1
    const-string v4, "\u6295\u7968"

    goto :goto_0

    .line 401
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->setVisibility(I)V

    .line 402
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

    if-eqz v4, :cond_0

    .line 403
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

    invoke-interface {v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;->onHide()V

    goto :goto_1

    .line 343
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mIsShow:Z

    return v0
.end method

.method public onControllerTransitionEnd(ZZ)V
    .locals 4
    .param p1, "animated"    # Z
    .param p2, "toShow"    # Z

    .prologue
    const/high16 v3, 0x41a00000    # 20.0f

    .line 426
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->TAG:Ljava/lang/String;

    const-string v2, "onControllerTransitionEnd begin"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    if-eqz p2, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 429
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 430
    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 436
    :goto_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->requestLayout()V

    .line 437
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->TAG:Ljava/lang/String;

    const-string v2, "onControllerTransitionEnd end"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void

    .line 432
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 433
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 434
    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public onControllerTransitionStart(ZZ)V
    .locals 0
    .param p1, "animated"    # Z
    .param p2, "toShow"    # Z

    .prologue
    .line 417
    return-void
.end method

.method public onControllerTransitionStep(FZ)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "toShow"    # Z

    .prologue
    .line 422
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 73
    const v0, 0x7f0c0ba8

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mIcon:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0c0ba4

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mTitle:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0c0ba5

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mBtnLink:Landroid/widget/Button;

    .line 77
    const v0, 0x7f0c0ba7

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mImgContent:Landroid/view/View;

    .line 78
    const v0, 0x7f0c0ba3

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mTextContent:Landroid/view/View;

    .line 80
    const v0, 0x7f0c0ba6

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mBtnClosed:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mBtnClosed:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method public setData(Lcom/tudou/detail/vo/Annotation;)V
    .locals 2
    .param p1, "anno"    # Lcom/tudou/detail/vo/Annotation;

    .prologue
    .line 141
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    .line 142
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mAnno:Lcom/tudou/detail/vo/Annotation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mAnno:Lcom/tudou/detail/vo/Annotation;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mAnno:Lcom/tudou/detail/vo/Annotation;

    .line 146
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mBtnLink:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 147
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mBtnLink:Landroid/widget/Button;

    const-string v1, "\u67e5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mBtnLink:Landroid/widget/Button;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$4;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mAnno:Lcom/tudou/detail/vo/Annotation;

    iget-object v1, v1, Lcom/tudou/detail/vo/Annotation;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020698

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setData(Lcom/tudou/detail/vo/VoteInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/tudou/detail/vo/VoteInfo;

    .prologue
    .line 98
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    .line 99
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mVote:Lcom/tudou/detail/vo/VoteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mVote:Lcom/tudou/detail/vo/VoteInfo;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mVote:Lcom/tudou/detail/vo/VoteInfo;

    .line 103
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mBtnLink:Landroid/widget/Button;

    const-string v1, "\u53bb\u6295\u7968"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mBtnLink:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 105
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mVote:Lcom/tudou/detail/vo/VoteInfo;

    iget-object v1, v1, Lcom/tudou/detail/vo/VoteInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0206e4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mImgContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mBtnLink:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mBtnClosed:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$2;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mBtnClosed:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$3;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 412
    return-void
.end method

.method public show()V
    .locals 14

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 260
    iput-boolean v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mIsShow:Z

    .line 262
    invoke-virtual {p0, v8}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->setVisibility(I)V

    .line 263
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 264
    .local v13, "width":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 265
    .local v10, "height":I
    invoke-virtual {p0, v13, v10}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->measure(II)V

    .line 266
    const/4 v12, 0x0

    .line 267
    .local v12, "startWidth":I
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mTextContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const v4, 0x43ba8000    # 373.0f

    invoke-static {v4}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 269
    .local v9, "endWidth":I
    sget-object v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "show startWidth = 0 endWidth = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mTextContent:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mTextContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 273
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 275
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 276
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 277
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 278
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mImgContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;

    invoke-direct {v1, p0, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 331
    return-void
.end method
