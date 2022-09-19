.class public final Lcn/com/iresearch/mapptracker/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/a/b;->a:Landroid/content/Context;

    const-string v0, "mAppTracker.db"

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/a/b;->b:Ljava/lang/String;

    iput v1, p0, Lcn/com/iresearch/mapptracker/a/b;->c:I

    iput-boolean v1, p0, Lcn/com/iresearch/mapptracker/a/b;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/a/b;->a:Landroid/content/Context;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcn/com/iresearch/mapptracker/a/b;->c:I

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/iresearch/mapptracker/a/b;->d:Z

    return v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/iresearch/mapptracker/a/b;->d:Z

    return-void
.end method
