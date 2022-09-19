.class public final Lcom/sea_monster/widget/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/widget/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AsyncImageView:[I

.field public static AsyncImageView_defDrawable:I

.field public static AsyncImageView_shape:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sea_monster/widget/R$styleable;->AsyncImageView:[I

    .line 63
    const/4 v0, 0x1

    sput v0, Lcom/sea_monster/widget/R$styleable;->AsyncImageView_defDrawable:I

    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/sea_monster/widget/R$styleable;->AsyncImageView_shape:I

    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
