.class public Lcn/com/iresearch/mvideotracker/db/table/Property;
.super Ljava/lang/Object;
.source "Property.java"


# static fields
.field private static sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private column:Ljava/lang/String;

.field private dataType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private defaultValue:Ljava/lang/String;

.field private field:Ljava/lang/reflect/Field;

.field private fieldName:Ljava/lang/String;

.field private get:Ljava/lang/reflect/Method;

.field private set:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 87
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 86
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/com/iresearch/mvideotracker/db/table/Property;->sdf:Ljava/text/SimpleDateFormat;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static stringToDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "strDate"    # Ljava/lang/String;

    .prologue
    .line 90
    if-eqz p0, :cond_0

    .line 92
    :try_start_0
    sget-object v1, Lcn/com/iresearch/mvideotracker/db/table/Property;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->column:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getGet()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->get:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getSet()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->set:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->get:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->get:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public setColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->column:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setDataType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "dataType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    .line 130
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->defaultValue:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 153
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->field:Ljava/lang/reflect/Field;

    .line 154
    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->fieldName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setGet(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "get"    # Ljava/lang/reflect/Method;

    .prologue
    .line 137
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->get:Ljava/lang/reflect/Method;

    .line 138
    return-void
.end method

.method public setSet(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "set"    # Ljava/lang/reflect/Method;

    .prologue
    .line 145
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->set:Ljava/lang/reflect/Method;

    .line 146
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 22
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->set:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    .line 24
    :try_start_0
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 25
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_3

    .line 27
    :cond_1
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 28
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 27
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 28
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 29
    :cond_3
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    if-ne v2, v3, :cond_6

    .line 30
    :cond_4
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->set:Ljava/lang/reflect/Method;

    .line 31
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 32
    if-nez p2, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    .line 30
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_2

    .line 34
    :cond_6
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    if-ne v2, v3, :cond_9

    .line 35
    :cond_7
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->set:Ljava/lang/reflect/Method;

    .line 36
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 37
    if-nez p2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_3
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v5

    .line 35
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_3

    .line 39
    :cond_9
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_c

    .line 40
    :cond_a
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->set:Ljava/lang/reflect/Method;

    .line 41
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 42
    if-nez p2, :cond_b

    const/4 v2, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    .line 40
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 43
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_4

    .line 44
    :cond_c
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/util/Date;

    if-eq v2, v3, :cond_d

    .line 45
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/sql/Date;

    if-ne v2, v3, :cond_f

    .line 46
    :cond_d
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p2, :cond_e

    .line 47
    :goto_5
    aput-object v1, v3, v4

    .line 46
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 47
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/iresearch/mvideotracker/db/table/Property;->stringToDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_5

    .line 48
    :cond_f
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_10

    .line 49
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_12

    .line 50
    :cond_10
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->set:Ljava/lang/reflect/Method;

    .line 51
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 52
    if-nez p2, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v4

    .line 50
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 52
    :cond_11
    const-string v1, "1"

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_6

    .line 55
    :cond_12
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 62
    :cond_13
    :try_start_2
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->field:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 63
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/table/Property;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 64
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method
