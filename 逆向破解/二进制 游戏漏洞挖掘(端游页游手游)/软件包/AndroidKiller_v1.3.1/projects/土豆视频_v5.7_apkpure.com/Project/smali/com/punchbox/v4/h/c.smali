.class public Lcom/punchbox/v4/h/c;
.super Lcom/punchbox/report/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/punchbox/report/a",
        "<",
        "Lcom/punchbox/v4/h/b;",
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
.method protected a(Lcom/punchbox/v4/h/b;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/punchbox/v4/h/b;

    invoke-virtual {p0, p1, p2}, Lcom/punchbox/v4/h/c;->a(Lcom/punchbox/v4/h/b;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/punchbox/v4/h/b;)Z
    .locals 1

    invoke-interface {p1}, Lcom/punchbox/v4/h/b;->a()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    check-cast p1, Lcom/punchbox/v4/h/b;

    invoke-virtual {p0, p1}, Lcom/punchbox/v4/h/c;->a(Lcom/punchbox/v4/h/b;)Z

    move-result v0

    return v0
.end method
