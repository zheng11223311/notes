.class public Lcom/youku/player/danmaku/TudouDanmakuUtils;
.super Ljava/lang/Object;
.source "TudouDanmakuUtils.java"

# interfaces
.implements Lcom/youku/player/danmaku/DanmakuUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;
    }
.end annotation


# instance fields
.field private danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field public imgUrlHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

.field public starHandler:Landroid/os/Handler;

.field private starLooper:Landroid/os/Looper;

.field private textSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v1, 0x19

    iput v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->textSize:I

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->imgUrlHashMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "starHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 62
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->starLooper:Landroid/os/Looper;

    .line 64
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->starLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->starHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/danmaku/TudouDanmakuUtils;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/controller/IDanmakuView;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/danmaku/TudouDanmakuUtils;
    .param p1, "x1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "x2"    # Lmaster/flame/danmaku/controller/IDanmakuView;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/youku/player/danmaku/TudouDanmakuUtils;->loadImage(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/controller/IDanmakuView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/player/danmaku/TudouDanmakuUtils;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/TudouDanmakuUtils;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/danmaku/TudouDanmakuUtils;->createSpannable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private bitMapToDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 165
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 167
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    :cond_1
    return-object v0
.end method

.method private createSpannable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "starName"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "color"    # I

    .prologue
    const/16 v8, 0x12

    const/4 v7, 0x0

    .line 174
    instance-of v5, p1, Lcom/youku/player/danmaku/CircleImageDrawable;

    if-eqz v5, :cond_0

    move-object v5, p1

    .line 175
    check-cast v5, Lcom/youku/player/danmaku/CircleImageDrawable;

    iget v6, v5, Lcom/youku/player/danmaku/CircleImageDrawable;->mWidth:I

    move-object v5, p1

    check-cast v5, Lcom/youku/player/danmaku/CircleImageDrawable;

    iget v5, v5, Lcom/youku/player/danmaku/CircleImageDrawable;->mWidth:I

    invoke-virtual {p1, v7, v7, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    :goto_0
    const-string v4, "bitmap"

    .line 181
    .local v4, "text":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 182
    .local v3, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/VerticalImageSpan;

    invoke-direct {v2, p1}, Lmaster/flame/danmaku/danmaku/model/VerticalImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 183
    .local v2, "span":Lmaster/flame/danmaku/danmaku/model/VerticalImageSpan;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v3, v2, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 184
    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 185
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#FF612A"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v7, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 186
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 187
    .local v1, "length":I
    invoke-virtual {v3, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 188
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v1, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 189
    return-object v3

    .line 177
    .end local v1    # "length":I
    .end local v2    # "span":Lmaster/flame/danmaku/danmaku/model/VerticalImageSpan;
    .end local v3    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->mContext:Landroid/content/Context;

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v5, v6}, Lcom/youku/player/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 178
    .local v0, "drawblelength":I
    invoke-virtual {p1, v7, v7, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private loadImage(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/controller/IDanmakuView;)V
    .locals 11
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "danmakuView"    # Lmaster/flame/danmaku/controller/IDanmakuView;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 126
    const/4 v4, 0x0

    .line 127
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 128
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 129
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->mContext:Landroid/content/Context;

    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v8, v9}, Lcom/youku/player/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 132
    .local v2, "drawblelength":I
    :try_start_0
    new-instance v8, Ljava/net/URL;

    iget-object v9, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 133
    .local v5, "urlConnection":Ljava/net/URLConnection;
    const/16 v8, 0x1388

    invoke-virtual {v5, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 134
    const/16 v8, 0x1388

    invoke-virtual {v5, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 135
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 136
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 137
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    const-string/jumbo v9, "star"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onLoadingComplete:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starUrl:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ",drawable:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v0, :cond_2

    move v8, v6

    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-eqz v4, :cond_0

    .line 145
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 150
    .end local v5    # "urlConnection":Ljava/net/URLConnection;
    :cond_0
    :goto_1
    if-nez v0, :cond_5

    .line 151
    iget-object v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    :goto_2
    iget-object v6, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starName:Ljava/lang/String;

    iget-object v8, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->content:Ljava/lang/String;

    iget v9, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    invoke-direct {p0, v1, v6, v8, v9}, Lcom/youku/player/danmaku/TudouDanmakuUtils;->createSpannable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iput-object v6, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 156
    invoke-interface {p2, p1, v7}, Lmaster/flame/danmaku/controller/IDanmakuView;->invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 157
    iget-object v6, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, v6, :cond_1

    .line 158
    iget-object v6, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->imgUrlHashMap:Ljava/util/HashMap;

    iget-object v7, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starUrl:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_1
    return-void

    .restart local v5    # "urlConnection":Ljava/net/URLConnection;
    :cond_2
    move v8, v7

    .line 138
    goto :goto_0

    .line 139
    .end local v5    # "urlConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v3

    .line 140
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "star"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onLoadingFailed:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",drawable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    if-eqz v4, :cond_0

    .line 145
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 146
    :catch_1
    move-exception v6

    goto :goto_1

    :cond_3
    move v6, v7

    .line 140
    goto :goto_3

    .line 143
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 144
    if-eqz v4, :cond_4

    .line 145
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 147
    :cond_4
    :goto_4
    throw v6

    .line 153
    :cond_5
    new-instance v1, Lcom/youku/player/danmaku/CircleImageDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0, v2}, Lcom/youku/player/danmaku/CircleImageDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 146
    .restart local v5    # "urlConnection":Ljava/net/URLConnection;
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v5    # "urlConnection":Ljava/net/URLConnection;
    :catch_3
    move-exception v7

    goto :goto_4
.end method


# virtual methods
.method public addDanmaku(Ljava/lang/String;Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/danmaku/DanmakuManager;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p3, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/youku/player/base/YoukuPlayerView;",
            "Lcom/youku/player/danmaku/DanmakuManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p4, "liveDanmakuInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;>;"
    if-nez p3, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget v0, p3, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 294
    if-eqz p2, :cond_0

    .line 295
    invoke-virtual {p2, p1, p4}, Lcom/youku/player/base/YoukuPlayerView;->addDanmaku(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public addDanmaku(Lorg/json/JSONObject;Lmaster/flame/danmaku/controller/IDanmakuView;Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;JLjava/util/ArrayList;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "danmakuView"    # Lmaster/flame/danmaku/controller/IDanmakuView;
    .param p3, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .param p4, "currMillisecond"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lmaster/flame/danmaku/controller/IDanmakuView;",
            "Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p6, "liveDanmakuInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;>;"
    const/4 v1, 0x0

    .line 88
    .local v1, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v0, 0x0

    .line 89
    .local v0, "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    const-string/jumbo v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    const-string/jumbo v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {p3, v4}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->doParse(Lorg/json/JSONArray;)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    move-result-object v0

    .line 92
    :cond_0
    iget-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    .line 93
    .local v2, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 94
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    check-cast v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 96
    .restart local v1    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-boolean v4, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isStar:Z

    if-eqz v4, :cond_1

    .line 97
    const/4 v4, 0x1

    iput-boolean v4, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isStarAdded:Z

    .line 98
    invoke-interface {p2, v1}, Lmaster/flame/danmaku/controller/IDanmakuView;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 99
    iget-object v4, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->starHandler:Landroid/os/Handler;

    new-instance v5, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;

    invoke-direct {v5, p0, v1, p2}, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;-><init>(Lcom/youku/player/danmaku/TudouDanmakuUtils;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/controller/IDanmakuView;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 101
    :cond_1
    invoke-interface {p2, v1}, Lmaster/flame/danmaku/controller/IDanmakuView;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    goto :goto_0

    .line 104
    :cond_2
    return-void
.end method

.method public beginDanmaku(Ljava/lang/String;ILcom/youku/player/danmaku/DanmakuManager;Lcom/youku/player/base/YoukuPlayerView;)V
    .locals 2
    .param p1, "jsonArray"    # Ljava/lang/String;
    .param p2, "beginTime"    # I
    .param p3, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;
    .param p4, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;

    .prologue
    .line 327
    if-nez p3, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget v0, p3, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 331
    if-eqz p4, :cond_0

    .line 332
    iput p2, p3, Lcom/youku/player/danmaku/DanmakuManager;->beginTime:I

    .line 333
    int-to-long v0, p2

    invoke-virtual {p4, p1, v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->beginDanmaku(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public closeDanmaku(Landroid/content/Context;Lcom/youku/player/danmaku/IDanmakuManager;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/IDanmakuManager;

    .prologue
    .line 226
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-static {p1}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u5173\u95ed\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x1

    const-string v1, "danmakuSwith"

    invoke-interface {p2, v0, v1}, Lcom/youku/player/danmaku/IDanmakuManager;->setDanmakuPreferences(ZLjava/lang/String;)V

    .line 232
    invoke-interface {p2}, Lcom/youku/player/danmaku/IDanmakuManager;->hideDanmaku()V

    goto :goto_0
.end method

.method public createDanmakuLoader()Lmaster/flame/danmaku/danmaku/loader/ILoader;
    .locals 2

    .prologue
    .line 74
    sget-object v1, Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;->TAG_TUDOU:Ljava/lang/String;

    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;->create(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/loader/ILoader;

    move-result-object v0

    .line 76
    .local v0, "loader":Lmaster/flame/danmaku/danmaku/loader/ILoader;
    return-object v0
.end method

.method public createDanmakuParser()Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;-><init>()V

    return-object v0
.end method

.method public getCurrentMillisecond(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;J)J
    .locals 2
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .param p2, "currMillisecond"    # J

    .prologue
    .line 195
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->getTimer()Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    return-wide v0
.end method

.method public getDanmakuSendColor(I)I
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 401
    const/16 v0, -0x6700

    return v0
.end method

.method public getFakeJSONArray()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "{ \"count\": 1,\"msg\": \"success\",\"result\": [{\"playat\": -1,\"content\": \"ceshi\", \"propertis\": \"\"}]}"

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->textSize:I

    return v0
.end method

.method public hideDanmaku(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/danmaku/DanmakuManager;)V
    .locals 3
    .param p1, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    const/4 v2, 0x1

    .line 260
    if-nez p2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    if-gt v0, v2, :cond_2

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuNoData:Z

    if-eqz v0, :cond_0

    .line 265
    :cond_2
    if-eqz p1, :cond_0

    .line 266
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    if-nez v0, :cond_0

    .line 268
    :cond_4
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u9690\u85cf\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Lcom/youku/player/base/YoukuPlayerView;->hideDanmaku()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    .line 271
    iput-boolean v2, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    goto :goto_0
.end method

.method public hideDanmakuWhenRotate(Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    .line 312
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->showTudouPadDanmaku()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    invoke-virtual {p2}, Lcom/youku/player/danmaku/DanmakuManager;->showDanmaku()V

    goto :goto_0

    .line 319
    :cond_2
    invoke-static {p1}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isPaused:Z

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p2}, Lcom/youku/player/danmaku/DanmakuManager;->hideDanmaku()V

    goto :goto_0
.end method

.method public openDanmaku(Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;I)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;
    .param p3, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p4, "currentVid"    # Ljava/lang/String;
    .param p5, "currentGolbalPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 202
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-static {p1}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "danmakuSwith"

    invoke-virtual {p2, v2, v0}, Lcom/youku/player/danmaku/DanmakuManager;->setDanmakuPreferences(ZLjava/lang/String;)V

    .line 207
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isFirstOpen:Z

    if-nez v0, :cond_2

    .line 208
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u5f00\u542f\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isPaused:Z

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p2}, Lcom/youku/player/danmaku/DanmakuManager;->showDanmaku()V

    goto :goto_0

    .line 214
    :cond_2
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u7b2c\u4e00\u6b21\u5f00\u542f\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput-boolean v2, p2, Lcom/youku/player/danmaku/DanmakuManager;->isFirstOpen:Z

    .line 216
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p2, p4, p5, v0}, Lcom/youku/player/danmaku/DanmakuManager;->handleDanmakuInfo(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public releaseDanmaku(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 2
    .param p1, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u91ca\u653e\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Lcom/youku/player/base/YoukuPlayerView;->releaseDanmaku()V

    .line 285
    :cond_0
    return-void
.end method

.method public requestStarImage(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/controller/IDanmakuView;)V
    .locals 2
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "danmakuView"    # Lmaster/flame/danmaku/controller/IDanmakuView;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->starHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;-><init>(Lcom/youku/player/danmaku/TudouDanmakuUtils;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/controller/IDanmakuView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    return-void
.end method

.method public resetAndReleaseDanmakuInfo(Lcom/youku/player/danmaku/IDanmakuManager;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "danmakuManager"    # Lcom/youku/player/danmaku/IDanmakuManager;
    .param p2, "isHLS"    # Ljava/lang/Boolean;

    .prologue
    .line 381
    if-nez p1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-interface {p1}, Lcom/youku/player/danmaku/IDanmakuManager;->hideDanmaku()V

    .line 385
    invoke-interface {p1}, Lcom/youku/player/danmaku/IDanmakuManager;->resetDanmakuInfo()V

    .line 386
    iget-object v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->starHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->imgUrlHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 388
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 389
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/danmaku/TudouDanmakuUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/danmaku/TudouDanmakuUtils$1;-><init>(Lcom/youku/player/danmaku/TudouDanmakuUtils;Lcom/youku/player/danmaku/IDanmakuManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public sendDanmaku(IIILjava/lang/String;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/base/YoukuPlayerView;Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;)V
    .locals 12
    .param p1, "size"    # I
    .param p2, "position"    # I
    .param p3, "color"    # I
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p6, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p7, "ctx"    # Landroid/content/Context;
    .param p8, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    .line 342
    if-eqz p8, :cond_0

    invoke-virtual/range {p8 .. p8}, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    .line 346
    const/4 v8, 0x0

    .line 347
    .local v8, "baseDanmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/youku/player/danmaku/DanmakuManager;->starUids:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/youku/player/danmaku/DanmakuManager;->starUids:Ljava/util/ArrayList;

    const-string v3, "danmuUserid"

    iget-object v4, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/youku/player/goplay/Profile;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    iget-object v2, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    const-string v3, "danmuNickName"

    iget-object v4, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/youku/player/goplay/Profile;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v3, v0, p3}, Lcom/youku/player/danmaku/TudouDanmakuUtils;->createSpannable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 349
    .local v9, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, p3, v9}, Lcom/youku/player/base/YoukuPlayerView;->sendDanmaku(IIILjava/lang/CharSequence;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v8

    .line 351
    const-string v2, "danmuUrl"

    iget-object v3, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/youku/player/goplay/Profile;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starUrl:Ljava/lang/String;

    .line 352
    const-string v2, "danmuNickName"

    iget-object v3, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/youku/player/goplay/Profile;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starName:Ljava/lang/String;

    .line 353
    move-object/from16 v0, p4

    iput-object v0, v8, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->content:Ljava/lang/String;

    .line 354
    iget-object v2, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->starHandler:Landroid/os/Handler;

    new-instance v3, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;

    invoke-virtual/range {p6 .. p6}, Lcom/youku/player/base/YoukuPlayerView;->getDanmakuSurfaceView()Lmaster/flame/danmaku/controller/IDanmakuView;

    move-result-object v4

    invoke-direct {v3, p0, v8, v4}, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;-><init>(Lcom/youku/player/danmaku/TudouDanmakuUtils;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/controller/IDanmakuView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    sget-object v2, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v3, "\u53d1\u9001\u660e\u661f\u5f39\u5e55"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v9    # "text":Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p8

    iget-boolean v2, v0, Lcom/youku/player/danmaku/DanmakuManager;->isUserShutUp:Z

    if-eqz v2, :cond_3

    .line 362
    sget-object v2, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v3, "\u7528\u6237\u7981\u8a00\uff0c\u7981\u6b62\u53d1\u9001\u5f39\u5e55"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_2
    move-object/from16 v0, p6

    move-object/from16 v1, p4

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/youku/player/base/YoukuPlayerView;->sendDanmaku(IIILjava/lang/CharSequence;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v8

    .line 359
    sget-object v2, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v3, "\u53d1\u9001\u666e\u901a\u5f39\u5e55"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 365
    :cond_3
    if-eqz v8, :cond_0

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"pos\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/youku/player/goplay/Profile;->getDanmakuPosition(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"alpha\":1,\"size\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/youku/player/goplay/Profile;->getDanmakuTextSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"effect\":0,\"color\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/youku/player/goplay/Profile;->getUnsignedInt(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, "propertis":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/youku/player/goplay/Profile;->replaceSpaceWithPlus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 373
    const-string v3, "1"

    move-object/from16 v0, p8

    iget-object v4, v0, Lcom/youku/player/danmaku/DanmakuManager;->currentVid:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v10, v8, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p5

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/youku/player/plugin/MediaPlayerDelegate;->submitDanmaku(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setDanmakuContextAndDrawable(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "danmakuContext"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 428
    iput-object p2, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 429
    iget-object v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    iget-object v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, v1}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->setDefaultDrawale(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    .line 430
    return-void
.end method

.method public setDanmakuTextScale(ZLcom/youku/player/danmaku/DanmakuManager;)V
    .locals 4
    .param p1, "isFullScreenPlay"    # Z
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 438
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->showTudouPadDanmaku()Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    if-eqz p1, :cond_4

    .line 442
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isFullScreenDanmaku:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isSmallScreenDanmaku:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isFullScreenDanmaku:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isSmallScreenDanmaku:Z

    if-nez v0, :cond_0

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setScaleTextSize(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 445
    iput-boolean v2, p2, Lcom/youku/player/danmaku/DanmakuManager;->isFullScreenDanmaku:Z

    .line 446
    iput-boolean v3, p2, Lcom/youku/player/danmaku/DanmakuManager;->isSmallScreenDanmaku:Z

    .line 447
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u8bbe\u7f6e\u5b57\u4f53\u4e3a1.0F"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_4
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isFullScreenDanmaku:Z

    if-nez v0, :cond_5

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isSmallScreenDanmaku:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isFullScreenDanmaku:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isSmallScreenDanmaku:Z

    if-eqz v0, :cond_0

    .line 452
    :cond_6
    iget-object v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setScaleTextSize(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 453
    iput-boolean v3, p2, Lcom/youku/player/danmaku/DanmakuManager;->isFullScreenDanmaku:Z

    .line 454
    iput-boolean v2, p2, Lcom/youku/player/danmaku/DanmakuManager;->isSmallScreenDanmaku:Z

    .line 455
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u8bbe\u7f6e\u5b57\u4f53\u4e3a0.7F"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextSize(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;Landroid/content/Context;)V
    .locals 2
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x19

    .line 406
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iput-object p1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .line 410
    iput-object p2, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->mContext:Landroid/content/Context;

    .line 411
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->showTudouPadDanmaku()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$dimen;->danmaku_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->textSize:I

    .line 413
    iget v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->textSize:I

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->setTextSize(I)V

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p1, v1}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->setTextSize(I)V

    .line 416
    iput v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->textSize:I

    goto :goto_0
.end method

.method public showDanmaku(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/danmaku/DanmakuManager;)V
    .locals 3
    .param p1, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    const/4 v2, 0x1

    .line 239
    if-nez p2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    if-gt v0, v2, :cond_2

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuNoData:Z

    if-eqz v0, :cond_0

    .line 244
    :cond_2
    if-eqz p1, :cond_0

    .line 245
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    if-eqz v0, :cond_0

    .line 247
    :cond_4
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u5c55\u793a\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lcom/youku/player/base/YoukuPlayerView;->showDanmaku()V

    .line 249
    iput-boolean v2, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    goto :goto_0
.end method

.method public showDanmakuWhenRotate(Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    .line 302
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-static {p1}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isPaused:Z

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p2}, Lcom/youku/player/danmaku/DanmakuManager;->showDanmaku()V

    goto :goto_0
.end method
