.class final Lcom/alibaba/sdk/android/repository/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/alibaba/sdk/android/plugin/PluginInfo;

.field final synthetic b:Lcom/alibaba/sdk/android/repository/a/d;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/repository/a/d;[Lcom/alibaba/sdk/android/plugin/PluginInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/repository/a/e;->b:Lcom/alibaba/sdk/android/repository/a/d;

    iput-object p2, p0, Lcom/alibaba/sdk/android/repository/a/e;->a:[Lcom/alibaba/sdk/android/plugin/PluginInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/repository/a/e;->b:Lcom/alibaba/sdk/android/repository/a/d;

    invoke-static {v0}, Lcom/alibaba/sdk/android/repository/a/d;->a(Lcom/alibaba/sdk/android/repository/a/d;)Lcom/alibaba/sdk/android/repository/a/a;

    iget-object v0, p0, Lcom/alibaba/sdk/android/repository/a/e;->a:[Lcom/alibaba/sdk/android/plugin/PluginInfo;

    invoke-static {v0}, Lcom/alibaba/sdk/android/repository/a/a;->a([Lcom/alibaba/sdk/android/plugin/PluginInfo;)V

    return-void
.end method
