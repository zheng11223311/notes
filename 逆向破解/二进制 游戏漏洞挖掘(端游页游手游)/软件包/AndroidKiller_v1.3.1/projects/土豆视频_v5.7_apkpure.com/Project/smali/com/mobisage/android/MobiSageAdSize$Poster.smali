.class public final enum Lcom/mobisage/android/MobiSageAdSize$Poster;
.super Ljava/lang/Enum;
.source "MobiSageAdSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Poster"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mobisage/android/MobiSageAdSize$Poster;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mobisage/android/MobiSageAdSize$Poster;

.field public static final enum Size_300X250:Lcom/mobisage/android/MobiSageAdSize$Poster;

.field public static final enum Size_320X480:Lcom/mobisage/android/MobiSageAdSize$Poster;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$Poster;

    const-string v1, "Size_300X250"

    invoke-direct {v0, v1, v2}, Lcom/mobisage/android/MobiSageAdSize$Poster;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Poster;->Size_300X250:Lcom/mobisage/android/MobiSageAdSize$Poster;

    new-instance v0, Lcom/mobisage/android/MobiSageAdSize$Poster;

    const-string v1, "Size_320X480"

    invoke-direct {v0, v1, v3}, Lcom/mobisage/android/MobiSageAdSize$Poster;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Poster;->Size_320X480:Lcom/mobisage/android/MobiSageAdSize$Poster;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mobisage/android/MobiSageAdSize$Poster;

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$Poster;->Size_300X250:Lcom/mobisage/android/MobiSageAdSize$Poster;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$Poster;->Size_320X480:Lcom/mobisage/android/MobiSageAdSize$Poster;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mobisage/android/MobiSageAdSize$Poster;->$VALUES:[Lcom/mobisage/android/MobiSageAdSize$Poster;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobisage/android/MobiSageAdSize$Poster;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/mobisage/android/MobiSageAdSize$Poster;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAdSize$Poster;

    return-object v0
.end method

.method public static values()[Lcom/mobisage/android/MobiSageAdSize$Poster;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mobisage/android/MobiSageAdSize$Poster;->$VALUES:[Lcom/mobisage/android/MobiSageAdSize$Poster;

    invoke-virtual {v0}, [Lcom/mobisage/android/MobiSageAdSize$Poster;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobisage/android/MobiSageAdSize$Poster;

    return-object v0
.end method
