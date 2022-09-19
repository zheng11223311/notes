.class public final Lio/rong/imkit/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AsyncImageView:[I

.field public static final AsyncImageView_RCCornerRadius:I = 0x1

.field public static final AsyncImageView_RCDefDrawable:I = 0x3

.field public static final AsyncImageView_RCMinShortSideSize:I = 0x0

.field public static final AsyncImageView_RCShape:I = 0x2

.field public static final InputView:[I

.field public static final InputView_RCStyle:I = 0x0

.field public static final RCCircleFlowIndicator:[I

.field public static final RCCircleFlowIndicator_RCActiveColor:I = 0x0

.field public static final RCCircleFlowIndicator_RCActiveType:I = 0x7

.field public static final RCCircleFlowIndicator_RCCentered:I = 0x4

.field public static final RCCircleFlowIndicator_RCFadeOut:I = 0x5

.field public static final RCCircleFlowIndicator_RCInactiveColor:I = 0x1

.field public static final RCCircleFlowIndicator_RCInactiveType:I = 0x6

.field public static final RCCircleFlowIndicator_RCRadius:I = 0x2

.field public static final RCCircleFlowIndicator_RCSnap:I = 0x8

.field public static final RCCircleFlowIndicator_RCSpacing:I = 0x3

.field public static final RCViewFlow:[I

.field public static final RCViewFlow_RCSideBuffer:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 678
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/rong/imkit/R$styleable;->AsyncImageView:[I

    .line 683
    new-array v0, v3, [I

    const v1, 0x7f01005e

    aput v1, v0, v2

    sput-object v0, Lio/rong/imkit/R$styleable;->InputView:[I

    .line 685
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lio/rong/imkit/R$styleable;->RCCircleFlowIndicator:[I

    .line 695
    new-array v0, v3, [I

    const v1, 0x7f01009c

    aput v1, v0, v2

    sput-object v0, Lio/rong/imkit/R$styleable;->RCViewFlow:[I

    return-void

    .line 678
    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data

    .line 685
    :array_1
    .array-data 4
        0x7f010093
        0x7f010094
        0x7f010095
        0x7f010096
        0x7f010097
        0x7f010098
        0x7f010099
        0x7f01009a
        0x7f01009b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
