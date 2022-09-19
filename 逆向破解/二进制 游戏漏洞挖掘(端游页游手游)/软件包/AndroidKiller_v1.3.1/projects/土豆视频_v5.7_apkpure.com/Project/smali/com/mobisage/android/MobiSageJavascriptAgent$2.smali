.class Lcom/mobisage/android/MobiSageJavascriptAgent$2;
.super Ljava/lang/Object;
.source "MobiSageJavascriptAgent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageJavascriptAgent;->processActionClickToCall(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

.field final synthetic val$params:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageJavascriptAgent;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$2;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p2, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$2;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 555
    :try_start_0
    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$2;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-static {v4}, Lcom/mobisage/android/MobiSageJavascriptAgent;->access$100(Lcom/mobisage/android/MobiSageJavascriptAgent;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 557
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const-string v4, "android.permission.CALL_PHONE"

    sget-object v5, Lcom/mobisage/android/MobiSageAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 561
    .local v1, "flag":I
    if-nez v1, :cond_0

    .line 562
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$2;->val$params:Ljava/util/HashMap;

    const-string v6, "lpg"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "tel://"

    const-string/jumbo v7, "tel:"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 567
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 568
    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$2;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-static {v4}, Lcom/mobisage/android/MobiSageJavascriptAgent;->access$100(Lcom/mobisage/android/MobiSageJavascriptAgent;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 582
    .end local v1    # "flag":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 570
    .restart local v1    # "flag":I
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$2;->val$params:Ljava/util/HashMap;

    const-string v6, "lpg"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "tel://"

    const-string/jumbo v7, "tel:"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 575
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 576
    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$2;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-static {v4}, Lcom/mobisage/android/MobiSageJavascriptAgent;->access$100(Lcom/mobisage/android/MobiSageJavascriptAgent;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    .end local v1    # "flag":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
