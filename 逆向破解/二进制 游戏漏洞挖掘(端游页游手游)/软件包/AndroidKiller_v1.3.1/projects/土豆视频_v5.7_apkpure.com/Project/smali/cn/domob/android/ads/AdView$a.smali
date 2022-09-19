.class public final enum Lcn/domob/android/ads/AdView$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/android/ads/AdView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/android/ads/AdView$a;

.field public static final enum b:Lcn/domob/android/ads/AdView$a;

.field public static final enum c:Lcn/domob/android/ads/AdView$a;

.field public static final enum d:Lcn/domob/android/ads/AdView$a;

.field public static final enum e:Lcn/domob/android/ads/AdView$a;

.field public static final enum f:Lcn/domob/android/ads/AdView$a;

.field public static final enum g:Lcn/domob/android/ads/AdView$a;

.field public static final enum h:Lcn/domob/android/ads/AdView$a;

.field private static final synthetic i:[Lcn/domob/android/ads/AdView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcn/domob/android/ads/AdView$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcn/domob/android/ads/AdView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/AdView$a;->a:Lcn/domob/android/ads/AdView$a;

    new-instance v0, Lcn/domob/android/ads/AdView$a;

    const-string v1, "INLINE"

    invoke-direct {v0, v1, v4}, Lcn/domob/android/ads/AdView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/AdView$a;->b:Lcn/domob/android/ads/AdView$a;

    new-instance v0, Lcn/domob/android/ads/AdView$a;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v5}, Lcn/domob/android/ads/AdView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/AdView$a;->c:Lcn/domob/android/ads/AdView$a;

    new-instance v0, Lcn/domob/android/ads/AdView$a;

    const-string v1, "SPLASH"

    invoke-direct {v0, v1, v6}, Lcn/domob/android/ads/AdView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/AdView$a;->d:Lcn/domob/android/ads/AdView$a;

    new-instance v0, Lcn/domob/android/ads/AdView$a;

    const-string v1, "RT_SPLASH"

    invoke-direct {v0, v1, v7}, Lcn/domob/android/ads/AdView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/AdView$a;->e:Lcn/domob/android/ads/AdView$a;

    new-instance v0, Lcn/domob/android/ads/AdView$a;

    const-string v1, "FEEDS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/AdView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/AdView$a;->f:Lcn/domob/android/ads/AdView$a;

    new-instance v0, Lcn/domob/android/ads/AdView$a;

    const-string v1, "VIDEO_INTERSTITIAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/AdView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/AdView$a;->g:Lcn/domob/android/ads/AdView$a;

    new-instance v0, Lcn/domob/android/ads/AdView$a;

    const-string v1, "PREROLL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/AdView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/AdView$a;->h:Lcn/domob/android/ads/AdView$a;

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [Lcn/domob/android/ads/AdView$a;

    sget-object v1, Lcn/domob/android/ads/AdView$a;->a:Lcn/domob/android/ads/AdView$a;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/android/ads/AdView$a;->b:Lcn/domob/android/ads/AdView$a;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/android/ads/AdView$a;->c:Lcn/domob/android/ads/AdView$a;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/android/ads/AdView$a;->d:Lcn/domob/android/ads/AdView$a;

    aput-object v1, v0, v6

    sget-object v1, Lcn/domob/android/ads/AdView$a;->e:Lcn/domob/android/ads/AdView$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/domob/android/ads/AdView$a;->f:Lcn/domob/android/ads/AdView$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/domob/android/ads/AdView$a;->g:Lcn/domob/android/ads/AdView$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/domob/android/ads/AdView$a;->h:Lcn/domob/android/ads/AdView$a;

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/android/ads/AdView$a;->i:[Lcn/domob/android/ads/AdView$a;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/android/ads/AdView$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcn/domob/android/ads/AdView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/AdView$a;

    return-object v0
.end method

.method public static values()[Lcn/domob/android/ads/AdView$a;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcn/domob/android/ads/AdView$a;->i:[Lcn/domob/android/ads/AdView$a;

    invoke-virtual {v0}, [Lcn/domob/android/ads/AdView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/android/ads/AdView$a;

    return-object v0
.end method
