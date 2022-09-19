.class public final Lcom/youku/android/player/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/android/player/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MagicTextView:[I

.field public static final MagicTextView_foreground:I = 0x9

.field public static final MagicTextView_innerShadowColor:I = 0x0

.field public static final MagicTextView_innerShadowDx:I = 0x2

.field public static final MagicTextView_innerShadowDy:I = 0x3

.field public static final MagicTextView_innerShadowRadius:I = 0x1

.field public static final MagicTextView_magicbackground:I = 0xa

.field public static final MagicTextView_outerShadowColor:I = 0x4

.field public static final MagicTextView_outerShadowDx:I = 0x6

.field public static final MagicTextView_outerShadowDy:I = 0x7

.field public static final MagicTextView_outerShadowRadius:I = 0x5

.field public static final MagicTextView_strokeColor:I = 0xd

.field public static final MagicTextView_strokeJoinStyle:I = 0xe

.field public static final MagicTextView_strokeMiter:I = 0xc

.field public static final MagicTextView_strokeWidth:I = 0xb

.field public static final MagicTextView_typeface:I = 0x8

.field public static final PlayerNewLoading:[I

.field public static final PlayerNewLoading_playerloadingSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 751
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/youku/android/player/R$styleable;->MagicTextView:[I

    .line 767
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010088

    aput v2, v0, v1

    sput-object v0, Lcom/youku/android/player/R$styleable;->PlayerNewLoading:[I

    return-void

    .line 751
    nop

    :array_0
    .array-data 4
        0x7f010060
        0x7f010061
        0x7f010062
        0x7f010063
        0x7f010064
        0x7f010065
        0x7f010066
        0x7f010067
        0x7f010068
        0x7f010069
        0x7f01006a
        0x7f01006b
        0x7f01006c
        0x7f01006d
        0x7f01006e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
