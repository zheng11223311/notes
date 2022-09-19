.class public Lcn/domob/android/c/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field final synthetic b:Lcn/domob/android/c/e;


# direct methods
.method protected constructor <init>(Lcn/domob/android/c/e;)V
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, Lcn/domob/android/c/e$a;->b:Lcn/domob/android/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/c/e$a;->a:Z

    return-void
.end method
