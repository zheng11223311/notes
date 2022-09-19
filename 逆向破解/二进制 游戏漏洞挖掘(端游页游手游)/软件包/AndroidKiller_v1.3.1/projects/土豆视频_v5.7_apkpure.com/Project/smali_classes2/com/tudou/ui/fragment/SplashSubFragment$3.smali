.class Lcom/tudou/ui/fragment/SplashSubFragment$3;
.super Ljava/lang/Object;
.source "SplashSubFragment.java"

# interfaces
.implements Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SplashSubFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SplashSubFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SplashSubFragment;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/tudou/ui/fragment/SplashSubFragment$3;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment$3;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->setBtnAllBackground()V

    .line 288
    return-void
.end method
