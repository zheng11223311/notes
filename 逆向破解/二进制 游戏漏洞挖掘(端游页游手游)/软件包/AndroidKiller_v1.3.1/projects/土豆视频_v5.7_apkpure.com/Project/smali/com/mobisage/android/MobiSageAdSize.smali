.class public final Lcom/mobisage/android/MobiSageAdSize;
.super Ljava/lang/Object;
.source "MobiSageAdSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageAdSize$1;,
        Lcom/mobisage/android/MobiSageAdSize$MobiSageAdViewContentType;,
        Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;,
        Lcom/mobisage/android/MobiSageAdSize$Poster;,
        Lcom/mobisage/android/MobiSageAdSize$Banner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method static final getBannerHeight(Lcom/mobisage/android/MobiSageAdSize$Banner;)I
    .locals 2
    .param p0, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Banner;

    .prologue
    .line 108
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$1;->$SwitchMap$com$mobisage$android$MobiSageAdSize$Banner:[I

    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdSize$Banner;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 125
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 110
    :pswitch_0
    const/16 v0, 0x32

    goto :goto_0

    .line 112
    :pswitch_1
    const/16 v0, 0xfa

    goto :goto_0

    .line 114
    :pswitch_2
    const/16 v0, 0x3c

    goto :goto_0

    .line 116
    :pswitch_3
    const/16 v0, 0x4b

    goto :goto_0

    .line 118
    :pswitch_4
    const/16 v0, 0x64

    goto :goto_0

    .line 120
    :pswitch_5
    const/16 v0, 0x5a

    goto :goto_0

    .line 122
    :pswitch_6
    const/16 v0, 0x96

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static final getBannerWidth(Lcom/mobisage/android/MobiSageAdSize$Banner;)I
    .locals 2
    .param p0, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Banner;

    .prologue
    .line 86
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$1;->$SwitchMap$com$mobisage$android$MobiSageAdSize$Banner:[I

    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdSize$Banner;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 88
    :pswitch_0
    const/16 v0, 0x140

    goto :goto_0

    .line 90
    :pswitch_1
    const/16 v0, 0x12c

    goto :goto_0

    .line 92
    :pswitch_2
    const/16 v0, 0x1d4

    goto :goto_0

    .line 94
    :pswitch_3
    const/16 v0, 0x1e0

    goto :goto_0

    .line 96
    :pswitch_4
    const/16 v0, 0x280

    goto :goto_0

    .line 98
    :pswitch_5
    const/16 v0, 0x2d8

    goto :goto_0

    .line 100
    :pswitch_6
    const/16 v0, 0x3c0

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static final getProductPlacementHeight(Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;)I
    .locals 2
    .param p0, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    .prologue
    .line 71
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$1;->$SwitchMap$com$mobisage$android$MobiSageAdSize$ProductPlacement:[I

    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 73
    :pswitch_0
    const/16 v0, 0xfa

    goto :goto_0

    .line 75
    :pswitch_1
    const/16 v0, 0x177

    goto :goto_0

    .line 77
    :pswitch_2
    const/16 v0, 0x1f4

    goto :goto_0

    .line 79
    :pswitch_3
    const/16 v0, 0x2ee

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static final getProductPlacementSize()Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;
    .locals 3

    .prologue
    const/16 v2, 0x1c2

    const/16 v1, 0x12c

    .line 42
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->screenWidth:I

    if-gt v0, v1, :cond_0

    .line 43
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->Size_300X250:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    .line 51
    :goto_0
    return-object v0

    .line 44
    :cond_0
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->screenWidth:I

    if-ge v1, v0, :cond_1

    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->screenWidth:I

    if-gt v0, v2, :cond_1

    .line 46
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->Size_450X375:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    goto :goto_0

    .line 47
    :cond_1
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->screenWidth:I

    if-ge v2, v0, :cond_2

    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->screenWidth:I

    const/16 v1, 0x258

    if-gt v0, v1, :cond_2

    .line 49
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->Size_600X500:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    goto :goto_0

    .line 51
    :cond_2
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->Size_900X750:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    goto :goto_0
.end method

.method static final getProductPlacementWidth(Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;)I
    .locals 2
    .param p0, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    .prologue
    .line 56
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$1;->$SwitchMap$com$mobisage$android$MobiSageAdSize$ProductPlacement:[I

    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 58
    :pswitch_0
    const/16 v0, 0x12c

    goto :goto_0

    .line 60
    :pswitch_1
    const/16 v0, 0x1c2

    goto :goto_0

    .line 62
    :pswitch_2
    const/16 v0, 0x258

    goto :goto_0

    .line 64
    :pswitch_3
    const/16 v0, 0x384

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
