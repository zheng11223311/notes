.class Lcn/domob/android/c/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/c/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/c/c;


# direct methods
.method constructor <init>(Lcn/domob/android/c/c;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcn/domob/android/c/c$1;->a:Lcn/domob/android/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcn/domob/android/c/c$1;->a:Lcn/domob/android/c/c;

    invoke-static {v0}, Lcn/domob/android/c/c;->a(Lcn/domob/android/c/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/android/c/c$1;->a:Lcn/domob/android/c/c;

    invoke-static {v2}, Lcn/domob/android/c/c;->b(Lcn/domob/android/c/c;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcn/domob/android/c/c$1$1;

    invoke-direct {v4, p0}, Lcn/domob/android/c/c$1$1;-><init>(Lcn/domob/android/c/c$1;)V

    const/4 v6, 0x0

    iget-object v2, p0, Lcn/domob/android/c/c$1;->a:Lcn/domob/android/c/c;

    invoke-static {v2}, Lcn/domob/android/c/c;->f(Lcn/domob/android/c/c;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    move-object v2, v1

    move-object v5, v1

    invoke-static/range {v0 .. v8}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 87
    return-void
.end method
