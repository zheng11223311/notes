.class Lcom/mobisage/android/MobiSageSwitchAnimeFactory;
.super Ljava/lang/Object;
.source "MobiSageSwitchAnimeFactory.java"


# static fields
.field private static final Anime_Duration:I = 0x1f4


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSwitchAnimation(I)Lcom/mobisage/android/MobiSageSwitchAnime;
    .locals 1
    .param p0, "animeType"    # I

    .prologue
    .line 16
    packed-switch p0, :pswitch_data_0

    .line 28
    new-instance v0, Lcom/mobisage/android/MobiSageFadeAnime;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageFadeAnime;-><init>()V

    :goto_0
    return-object v0

    .line 18
    :pswitch_0
    new-instance v0, Lcom/mobisage/android/MobiSageRotationAnime;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageRotationAnime;-><init>()V

    goto :goto_0

    .line 20
    :pswitch_1
    new-instance v0, Lcom/mobisage/android/MobiSageTranslateL2RAnime;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageTranslateL2RAnime;-><init>()V

    goto :goto_0

    .line 22
    :pswitch_2
    new-instance v0, Lcom/mobisage/android/MobiSageTranslateT2BAnime;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageTranslateT2BAnime;-><init>()V

    goto :goto_0

    .line 24
    :pswitch_3
    new-instance v0, Lcom/mobisage/android/MobiSageFadeAnime;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageFadeAnime;-><init>()V

    goto :goto_0

    .line 26
    :pswitch_4
    new-instance v0, Lcom/mobisage/android/MobiSageEyeAnime;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageEyeAnime;-><init>()V

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static randomAnimeType()I
    .locals 4

    .prologue
    .line 32
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x41

    return v0
.end method
