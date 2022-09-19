.class public final Lcn/com/iresearch/mapptracker/a/e/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/text/SimpleDateFormat;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/com/iresearch/mapptracker/a/e/b;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/a/e/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/iresearch/mapptracker/a/e/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/e/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/e/b;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Date;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/e/b;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/sql/Date;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcn/com/iresearch/mapptracker/a/e/b;->c:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/a/e/b;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/e/b;->b:Ljava/lang/Object;

    goto :goto_0
.end method
