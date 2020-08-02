

	var mv=new Vue({
		el:'#app',
		data:{
			PI:Math.PI,
			s:0,
			i:0,
			h:0,
			d:0,
			m:0,
			y:0,
			w:0,
			sr:280,
			ir:230,
			hr:190,
			wr:155,
			dr:110,
			mr:60,
			wk:['日','一','二','三','四','五','六']
		},
		created() {
			setInterval(()=>{
				var date=new Date()
				this.y=date.getFullYear()
				this.m=date.getMonth()
				this.d=date.getDate()
				this.w=date.getDay()
				this.h=date.getHours()
				this.i=date.getMinutes()
				this.s=date.getSeconds()
				Math.cos()
				
			},1000)
		},
		methods:{
			xc(r,k,l){
				return r*Math.cos(2*k*this.PI/l) 
			},
			yc(r,k,l){
				return r*Math.sin(2*k*this.PI/l) 
			},
			dg(k,l){
				return k*360/l
			},
			zh(num,type){
				switch(type){
					case 1:
						var t1=['零','一','二','三','四','五','六','七','八','九','十']
						var sw=parseInt(num/10)
						var gw=num%10
						return (sw!=0?t1[sw]+'十':'')+(gw!=0?t1[gw]:(sw==0?t1[0]:''))
						break
				}
			}
		}
	})