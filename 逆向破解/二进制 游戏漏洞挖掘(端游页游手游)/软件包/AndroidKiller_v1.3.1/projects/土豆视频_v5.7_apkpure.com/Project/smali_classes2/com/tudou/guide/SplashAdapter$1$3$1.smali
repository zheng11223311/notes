.class Lcom/tudou/guide/SplashAdapter$1$3$1;
.super Ljava/lang/Object;
.source "SplashAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/guide/SplashAdapter$1$3;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tudou/guide/SplashAdapter$1$3;


# direct methods
.method constructor <init>(Lcom/tudou/guide/SplashAdapter$1$3;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tudou/guide/SplashAdapter$1$3$1;->this$2:Lcom/tudou/guide/SplashAdapter$1$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$3$1;->this$2:Lcom/tudou/guide/SplashAdapter$1$3;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1$3;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-virtual {v0}, Lcom/tudou/guide/SplashAdapter;->notifyDataSetChanged()V

    .line 174
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$3$1;->this$2:Lcom/tudou/guide/SplashAdapter$1$3;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1$3;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v0}, Lcom/tudou/guide/SplashAdapter;->access$200(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$3$1;->this$2:Lcom/tudou/guide/SplashAdapter$1$3;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1$3;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v0}, Lcom/tudou/guide/SplashAdapter;->access$200(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;->onSelect()V

    .line 176
    :cond_0
    return-void
.end method
