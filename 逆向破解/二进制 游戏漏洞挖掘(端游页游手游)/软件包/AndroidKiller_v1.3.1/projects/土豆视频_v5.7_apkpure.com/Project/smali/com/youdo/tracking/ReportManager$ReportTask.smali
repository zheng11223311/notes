.class Lcom/youdo/tracking/ReportManager$ReportTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/tracking/ReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/tracking/ReportManager;


# direct methods
.method private constructor <init>(Lcom/youdo/tracking/ReportManager;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/tracking/ReportManager$ReportTask;->this$0:Lcom/youdo/tracking/ReportManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youdo/tracking/ReportManager;Lcom/youdo/tracking/ReportManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/youdo/tracking/ReportManager$ReportTask;-><init>(Lcom/youdo/tracking/ReportManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/tracking/ReportManager$ReportTask;->this$0:Lcom/youdo/tracking/ReportManager;

    invoke-static {v0}, Lcom/youdo/tracking/ReportManager;->access$100(Lcom/youdo/tracking/ReportManager;)V

    return-void
.end method
