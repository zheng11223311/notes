.class public final Lcn/com/iresearch/mapptracker/a/b/b;
.super Lcn/com/iresearch/mapptracker/a/b/a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/com/iresearch/mapptracker/a/b/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/a/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcn/com/iresearch/mapptracker/a/b/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/a/b/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/a/b/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final printStackTrace()V
    .locals 2

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/b/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/a/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcn/com/iresearch/mapptracker/a/b/a;->printStackTrace()V

    return-void
.end method
