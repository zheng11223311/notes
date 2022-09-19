.class final enum Lcom/youku/widget/PageHorizontalScrollView$ScrollType;
.super Ljava/lang/Enum;
.source "PageHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/PageHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScrollType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/widget/PageHorizontalScrollView$ScrollType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

.field public static final enum FLING:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

.field public static final enum IDLE:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

.field public static final enum TOUCH_SCROLL:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    new-instance v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->IDLE:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    new-instance v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    const-string v1, "TOUCH_SCROLL"

    invoke-direct {v0, v1, v3}, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->TOUCH_SCROLL:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    new-instance v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    const-string v1, "FLING"

    invoke-direct {v0, v1, v4}, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->FLING:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    .line 165
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    sget-object v1, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->IDLE:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->TOUCH_SCROLL:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->FLING:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->$VALUES:[Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

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
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/widget/PageHorizontalScrollView$ScrollType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    const-class v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    return-object v0
.end method

.method public static values()[Lcom/youku/widget/PageHorizontalScrollView$ScrollType;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->$VALUES:[Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    invoke-virtual {v0}, [Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    return-object v0
.end method
