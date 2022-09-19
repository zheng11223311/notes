.class Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$ComparatorTask;
.super Ljava/lang/Object;
.source "SYTimer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComparatorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;


# direct methods
.method private constructor <init>(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$ComparatorTask;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;
    .param p2, "x1"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$ComparatorTask;-><init>(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)I
    .locals 4
    .param p1, "lhs"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
    .param p2, "rhs"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->getSurplus()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->getSurplus()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 275
    check-cast p1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    check-cast p2, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-virtual {p0, p1, p2}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$ComparatorTask;->compare(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method
