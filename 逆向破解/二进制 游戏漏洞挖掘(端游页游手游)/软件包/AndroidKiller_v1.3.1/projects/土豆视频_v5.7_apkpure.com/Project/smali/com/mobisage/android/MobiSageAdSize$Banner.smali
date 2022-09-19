.class public final enum Lcom/mobisage/android/MobiSageAdSize$Banner;
.super Ljava/lang/Enum;
.source "MobiSageAdSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Banner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mobisage/android/MobiSageAdSize$Banner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mobisage/android/MobiSageAdSize$Banner;

.field public static final enum Size_300X250:Lcom/mobisage/android/MobiSageAdSize$Banner;

.field public static final enum Size_320X50:Lcom/mobisage/android/MobiSageAdSize$Banner;

.field public static final enum Size_468X60:Lcom/mobisage/android/MobiSageAdSize$Banner;

.field public static final enum Size_480X75:Lcom/mobisage/android/MobiSageAdSize$Banner;

.field public static final enum Size_640X100:Lcom/mobisage/android/MobiSageAdSize$Banner;

.field public static final enum Size_728X90:Lcom/mobisage/android/MobiSageAdSize$Banner;

.field public static final enum Size_960X150:Lcom/mobisage/android/MobiSageAdSize$Banner;

.field public static final enum Size_NA:Lcom/mobisage/android/MobiSageAdSize$Banner;

.field public static final enum Size_Word:Lcom/mobisage/android/MobiSageAdSize$Banner;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$Banner;

    const-string v1, "Size_NA"

    invoke-direct {v0, v1, v3}, Lcom/mobisage/android/MobiSageAdSize$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_NA:Lcom/mobisage/android/MobiSageAdSize$Banner;

    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$Banner;

    const-string v1, "Size_300X250"

    invoke-direct {v0, v1, v4}, Lcom/mobisage/android/MobiSageAdSize$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_300X250:Lcom/mobisage/android/MobiSageAdSize$Banner;

    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$Banner;

    const-string v1, "Size_320X50"

    invoke-direct {v0, v1, v5}, Lcom/mobisage/android/MobiSageAdSize$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_320X50:Lcom/mobisage/android/MobiSageAdSize$Banner;

    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$Banner;

    const-string v1, "Size_468X60"

    invoke-direct {v0, v1, v6}, Lcom/mobisage/android/MobiSageAdSize$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_468X60:Lcom/mobisage/android/MobiSageAdSize$Banner;

    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$Banner;

    const-string v1, "Size_480X75"

    invoke-direct {v0, v1, v7}, Lcom/mobisage/android/MobiSageAdSize$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_480X75:Lcom/mobisage/android/MobiSageAdSize$Banner;

    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$Banner;

    const-string v1, "Size_640X100"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mobisage/android/MobiSageAdSize$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_640X100:Lcom/mobisage/android/MobiSageAdSize$Banner;

    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$Banner;

    const-string v1, "Size_728X90"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mobisage/android/MobiSageAdSize$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_728X90:Lcom/mobisage/android/MobiSageAdSize$Banner;

    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$Banner;

    const-string v1, "Size_960X150"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mobisage/android/MobiSageAdSize$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_960X150:Lcom/mobisage/android/MobiSageAdSize$Banner;

    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$Banner;

    const-string v1, "Size_Word"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mobisage/android/MobiSageAdSize$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_Word:Lcom/mobisage/android/MobiSageAdSize$Banner;

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/mobisage/android/MobiSageAdSize$Banner;

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_NA:Lcom/mobisage/android/MobiSageAdSize$Banner;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_300X250:Lcom/mobisage/android/MobiSageAdSize$Banner;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_320X50:Lcom/mobisage/android/MobiSageAdSize$Banner;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_468X60:Lcom/mobisage/android/MobiSageAdSize$Banner;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_480X75:Lcom/mobisage/android/MobiSageAdSize$Banner;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_640X100:Lcom/mobisage/android/MobiSageAdSize$Banner;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_728X90:Lcom/mobisage/android/MobiSageAdSize$Banner;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_960X150:Lcom/mobisage/android/MobiSageAdSize$Banner;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mobisage/android/MobiSageAdSize$Banner;->Size_Word:Lcom/mobisage/android/MobiSageAdSize$Banner;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->$VALUES:[Lcom/mobisage/android/MobiSageAdSize$Banner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobisage/android/MobiSageAdSize$Banner;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/mobisage/android/MobiSageAdSize$Banner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAdSize$Banner;

    return-object v0
.end method

.method public static values()[Lcom/mobisage/android/MobiSageAdSize$Banner;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$Banner;->$VALUES:[Lcom/mobisage/android/MobiSageAdSize$Banner;

    invoke-virtual {v0}, [Lcom/mobisage/android/MobiSageAdSize$Banner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobisage/android/MobiSageAdSize$Banner;

    return-object v0
.end method
