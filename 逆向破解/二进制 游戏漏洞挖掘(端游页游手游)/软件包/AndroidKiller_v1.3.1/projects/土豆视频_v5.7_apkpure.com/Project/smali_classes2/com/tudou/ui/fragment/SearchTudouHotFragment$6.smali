.class Lcom/tudou/ui/fragment/SearchTudouHotFragment$6;
.super Ljava/lang/Object;
.source "SearchTudouHotFragment.java"

# interfaces
.implements Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabSelect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchTudouHotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$6;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelect(Ljava/lang/String;)V
    .locals 1
    .param p1, "tab"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string v0, "search_tab"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string v0, "search_tab"

    invoke-static {v0, p1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
