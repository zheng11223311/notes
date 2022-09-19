.class Lcom/youku/gamecenter/statistics/InstallStatisticHelper$MyRunnable;
.super Ljava/lang/Object;
.source "InstallStatisticHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/statistics/InstallStatisticHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRunnable"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/gamecenter/statistics/InstallStatisticHelper;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/statistics/InstallStatisticHelper;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$MyRunnable;->this$0:Lcom/youku/gamecenter/statistics/InstallStatisticHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$MyRunnable;->mKey:Ljava/lang/String;

    .line 175
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$MyRunnable;->this$0:Lcom/youku/gamecenter/statistics/InstallStatisticHelper;

    iget-object v1, p0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$MyRunnable;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->access$000(Lcom/youku/gamecenter/statistics/InstallStatisticHelper;Ljava/lang/String;)V

    .line 180
    return-void
.end method
