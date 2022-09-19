.class Lcom/tudou/guide/VerticalViewPager$3;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/guide/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/guide/VerticalViewPager;


# direct methods
.method constructor <init>(Lcom/tudou/guide/VerticalViewPager;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/tudou/guide/VerticalViewPager$3;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager$3;->this$0:Lcom/tudou/guide/VerticalViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->access$000(Lcom/tudou/guide/VerticalViewPager;I)V

    .line 250
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager$3;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-virtual {v0}, Lcom/tudou/guide/VerticalViewPager;->populate()V

    .line 251
    return-void
.end method
