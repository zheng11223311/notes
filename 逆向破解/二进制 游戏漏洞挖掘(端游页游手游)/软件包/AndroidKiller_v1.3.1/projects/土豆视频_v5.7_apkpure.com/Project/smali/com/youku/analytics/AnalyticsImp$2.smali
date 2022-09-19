.class Lcom/youku/analytics/AnalyticsImp$2;
.super Ljava/lang/Object;
.source "AnalyticsImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/analytics/AnalyticsImp;->setPid(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/analytics/AnalyticsImp;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$pid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsImp$2;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iput-object p2, p0, Lcom/youku/analytics/AnalyticsImp$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/youku/analytics/AnalyticsImp$2;->val$pid:Ljava/lang/String;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$2;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "youku_pid"

    iget-object v2, p0, Lcom/youku/analytics/AnalyticsImp$2;->val$pid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/youku/analytics/utils/StorageTools;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method
