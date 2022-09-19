.class public Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Background;
.super Ljava/lang/Object;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Background"
.end annotation


# static fields
.field public static final BLACK:I

.field public static final BLUE:I

.field public static final GRAY:I

.field public static final GREEN:I

.field public static final ORANGE:I

.field public static final PURPLE:I

.field public static final RED:I

.field public static final WHITE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Background;->BLACK:I

    .line 78
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Background;->BLUE:I

    .line 79
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Background;->GRAY:I

    .line 80
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Background;->GREEN:I

    .line 81
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Background;->ORANGE:I

    .line 82
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Background;->PURPLE:I

    .line 83
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Background;->RED:I

    .line 84
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Background;->WHITE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
