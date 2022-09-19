.class public Lcom/punchbox/report/e;
.super Lcom/punchbox/report/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/punchbox/report/a",
        "<",
        "Lcom/punchbox/report/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/report/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/punchbox/report/f;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lcom/punchbox/report/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/punchbox/report/f;

    invoke-virtual {p0, p1, p2}, Lcom/punchbox/report/e;->a(Lcom/punchbox/report/f;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/punchbox/report/f;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    check-cast p1, Lcom/punchbox/report/f;

    invoke-virtual {p0, p1}, Lcom/punchbox/report/e;->a(Lcom/punchbox/report/f;)Z

    move-result v0

    return v0
.end method
