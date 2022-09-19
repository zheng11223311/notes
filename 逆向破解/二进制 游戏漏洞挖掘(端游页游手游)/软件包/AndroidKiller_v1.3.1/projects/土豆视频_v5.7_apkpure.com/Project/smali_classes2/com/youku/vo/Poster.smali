.class public Lcom/youku/vo/Poster;
.super Ljava/lang/Object;
.source "Poster.java"


# static fields
.field public static final STAT_FALID:I = 0x0

.field public static final STAT_LOADED:I = 0x2

.field public static final STAT_LOADING:I = 0x1


# instance fields
.field public big_img:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public game_information:Lcom/youku/vo/PosterGameInfomation;

.field public img:Landroid/graphics/Bitmap;

.field public loadState:I

.field public playlist_code:Ljava/lang/String;

.field public short_description:Ljava/lang/String;

.field public small_img:Ljava/lang/String;

.field public softRefImg:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public starNum:F

.field public target_type:I

.field public tid:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public url_include_ids_count:I

.field public vid:Ljava/lang/String;

.field public videotype:Lcom/tudou/android/Youku$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/vo/Poster;->loadState:I

    .line 80
    return-void
.end method


# virtual methods
.method public setCurrentType()V
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/youku/vo/Poster;->target_type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/youku/vo/Poster;->target_type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/youku/vo/Poster;->target_type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 61
    :cond_0
    sget-object v0, Lcom/tudou/android/Youku$Type;->GAME:Lcom/tudou/android/Youku$Type;

    iput-object v0, p0, Lcom/youku/vo/Poster;->videotype:Lcom/tudou/android/Youku$Type;

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/youku/vo/Poster;->vid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    sget-object v0, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iput-object v0, p0, Lcom/youku/vo/Poster;->videotype:Lcom/tudou/android/Youku$Type;

    goto :goto_0

    .line 66
    :cond_2
    sget-object v0, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iput-object v0, p0, Lcom/youku/vo/Poster;->videotype:Lcom/tudou/android/Youku$Type;

    goto :goto_0
.end method

.method public setTargetType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p1}, Lcom/youku/util/Util;->getTargetType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/vo/Poster;->target_type:I

    .line 45
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/youku/vo/Poster;->type:Ljava/lang/String;

    .line 57
    return-void
.end method
