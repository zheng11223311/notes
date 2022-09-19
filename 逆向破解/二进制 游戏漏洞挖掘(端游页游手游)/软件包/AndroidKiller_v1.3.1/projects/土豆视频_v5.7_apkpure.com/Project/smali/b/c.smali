.class Lb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lb/b;


# direct methods
.method constructor <init>(Lb/b;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lb/c;->a:Lb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lb/c;->a:Lb/b;

    invoke-static {v0}, Lb/b;->a(Lb/b;)V

    .line 107
    return-void
.end method
