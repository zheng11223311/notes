.class public final enum Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;
.super Ljava/lang/Enum;
.source "MobiSageAdSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProductPlacement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

.field public static final enum Size_300X250:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

.field public static final enum Size_450X375:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

.field public static final enum Size_600X500:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

.field public static final enum Size_900X750:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    const-string v1, "Size_300X250"

    invoke-direct {v0, v1, v2}, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->Size_300X250:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    const-string v1, "Size_450X375"

    invoke-direct {v0, v1, v3}, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->Size_450X375:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    const-string v1, "Size_600X500"

    invoke-direct {v0, v1, v4}, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->Size_600X500:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    const-string v1, "Size_900X750"

    invoke-direct {v0, v1, v5}, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->Size_900X750:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->Size_300X250:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->Size_450X375:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->Size_600X500:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->Size_900X750:Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->$VALUES:[Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    return-object v0
.end method

.method public static values()[Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->$VALUES:[Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    invoke-virtual {v0}, [Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    return-object v0
.end method
