.class public final Lcom/youtu/apps/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youtu/apps/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Loading:[I

.field public static final Loading_loadingSizes:I

.field public static final RecommendLoading:[I

.field public static final RecommendLoading_recommendLoadingSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 505
    new-array v0, v3, [I

    const v1, 0x7f01005f

    aput v1, v0, v2

    sput-object v0, Lcom/youtu/apps/R$styleable;->Loading:[I

    .line 507
    new-array v0, v3, [I

    const v1, 0x7f01009d

    aput v1, v0, v2

    sput-object v0, Lcom/youtu/apps/R$styleable;->RecommendLoading:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
